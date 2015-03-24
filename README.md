# Ubiquity::Backup

## Usage

Installation
    Pre-requisites
    git
    ruby
    rubygems
    bundler
    
Install Pre-requisites on CentOS

Execute the following:
           yum install -y git ruby ruby-devel rubygems	
           gem install bundler

Install Using Git
Execute the following:
           mkdir -p /opt/ubiquity
           cd /opt/ubiquity
           git clone https://github.com/XPlatform-Consulting/ubiquity-backup.git
           cd ubiquity-backup
           bundle update


### Backup

    Usage: ubiquity-backup [options]

    Options:
            --archive-path PATH          The directory to use when building the archive.
                                         default: '/tmp'

            --[no-]dry-run               Will output the commands to be run but will not execute them.
                                         default: true

            --help                       Display this message.

Dry Run

    ubiquity-backup

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

    ubiquity-restore "/tmp/ubiquity-backup_20150319-15511-156k4nk.tgz"

Non-Dry Run

     ubiquity-restore "/tmp/ubiquity-backup_20150319-15511-156k4nk.tgz" --no-dry-run

## Contributing

1. Fork it ( https://github.com/XPlatform-Consulting/ubiquity-backup/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
