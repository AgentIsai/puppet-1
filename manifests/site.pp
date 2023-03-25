# servers

node 'bots1.wikiforge.net' {
    include base
    include role::irc
}

node 'db1.wikiforge.net' {
    include base
    include role::db
}

node 'mem1.wikiforge.net' {
    include base
    include role::memcached
}

node 'mw1.wikiforge.net' {
    include base
    include role::mediawiki
}

node 'puppet1.wikiforge.net' {
    include base
    include role::postgresql
    include puppetdb::database
    include role::puppetserver
    # include role::salt
    include role::ssl
}

# ensures all servers have basic class if puppet runs
node default {
    include base
}
