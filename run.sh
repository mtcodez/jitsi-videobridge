HOST=vm1-xmpp-focus
DOMAIN=vm1-xmpp-focus
SUBDOMAIN=jitsi-videobridge
PORT=5347
SECRET=jQFQa#m#
JVB_HOME=`pwd`

mvn compile exec:java -Dexec.args="--host=$DOMAIN --domain=$DOMAIN --subdomain=$SUBDOMAIN --port=$PORT --secret=$SECRET --apis=rest,xmpp" -Djava.library.path=/vagrant/jitsi-videobridge/lib/native/linux-64 -Djava.util.logging.config.file=/vagrant/jitsi-videobridge/lib/logging.properties -Dnet.java.sip.communicator.SC_HOME_DIR_NAME=.jitsi-videobridge
