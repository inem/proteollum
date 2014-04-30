proteollum - Just gollum wiki with authorization layer for editing
====================================

1. create original records in users.yml (use require 'digest'; Digest::SHA1.hexdigest('yourpassword') in irb console)
  alternatively, you can just `echo -n yourpassword | sha1sum` in unix console
1. Proteollum expects content git repository in wikidata folder, so be sure you created it
1. Launch server using serve.sh

