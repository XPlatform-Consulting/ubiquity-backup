# Ubiquity::Backup

## Installation

### Pre-requisites

  - [git](http://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
  - [ruby](https://www.ruby-lang.org/en/documentation/installation/)
  - rubygems
  - [bundler](http://bundler.io/#getting-started)

#### Install Pre-requisites on CentOS

Execute the following:

    $ yum install -y git ruby ruby-devel rubygems
    $ gem install bundler

### Install Using Git

Execute the following:

    $ mkdir -p /opt/ubiquity
    $ cd /opt/ubiquity
    $ git clone https://github.com/XPlatform-Consulting/ubiquity-backup.git
    $ cd ubiquity-backup
    $ bundle update

## Usage

### Backup

    Usage: ubiquity-backup [options] [system name(s)]

    Examples:

      1. Dry Run of a Backup of All Supported Systems (Default)
        # ubiquity-backup

      2. Actual Backup of All Supported Systems
        # ubiquity-backup --no-dry-run

      3. Backup Just Cantemo Portal
        # ubiquity-backup cantemo_portal --no-dry-run

      4. Backup Aspera Enterprise and Aspera Shares Only
        # ubiquity-backup --no-dry-run aspera_enterprise aspera_shares

    Options:
            --[no-]archive-aspera-console
                                         If set to false then an attempt to backup this system will not be made.
                                         default: true

            --[no-]archive-aspera-enterprise
                                         If set to false then an attempt to backup this system will not be made.
                                         default: true

            --[no-]archive-aspera-faspex If set to false then an attempt to backup this system will not be made.
                                         default: true

            --[no-]archive-aspera-orchestrator
                                         If set to false then an attempt to backup this system will not be made.
                                         default: true

            --[no-]archive-aspera-shares If set to false then an attempt to backup this system will not be made.
                                         default: true

            --[no-]archive-cantemo-portal
                                         If set to false then an attempt to backup this system will not be made.
                                         default: true

            --archive-path PATH          The directory to use when building the archive.
                                         default: '/tmp'

            --archive-name NAME          Will override the generated archive name with whatever is specified.
                                         example: ubiquity-backup-20150324-39140-1qe50rt

            --[no-]dry-run               Will output the commands to be run but will not execute them.
                                         default: true

            --help                       Display this message.

    System Names:
      all (default)
      aspera_console
      aspera_enterprise
      aspera_faspex
      aspera_orchestrator
      aspera_shares
      cantemo_portal

      * Note: Supplying a system name will override a --no-[system-name] option

Dry Run

    ubiquity-backup --dry-run

Non-Dry Run

     ubiquity-backup --no-dry-run

### Restore

    Usage: ubiquity-restore [options] <archive-file-name>

    Example: ubiquity-restore "/tmp/ubiquity-backup_20150319-15511-156k4nk.tgz"

    Options:
            --archive-dir-path PATH      The path of the directory to extract the archive directory in.
                                         default: /tmp

            --[no-]dry-run               Will output the commands to be run but will not execute them.
                                         default: true

            --[no-]output-command-history
                                         Will show the commands that were run. This is redundant if noop is true.
            --[no-]restore-aspera-enterprise
                                         Will run through the commands to restore Aspera Enterprise.
                                         default: false

            --[no-]restore-aspera-orchestrator
                                         Will run through the commands to restore Aspera Orchestrator
                                         default: true

            --[no-]restore-cantemo-portal
                                         Will run through the commands to restore Cantemo Portal
                                         default: true

            --help                       Display this message.


Dry Run

    ubiquity-restore "/tmp/ubiquity-backup_20150319-15511-156k4nk.tgz" --dry-run

Non-Dry Run

     ubiquity-restore "/tmp/ubiquity-backup_20150319-15511-156k4nk.tgz" --no-dry-run

## Contributing

1. Fork it ( https://github.com/XPlatform-Consulting/ubiquity-backup/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
