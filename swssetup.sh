sudo curl -L $(curl -s https://api.github.com/repos/static-web-server/static-web-server/releases/latest | grep 'browser_' | cut -d\" -f4 | grep 'x86_64-unknown-linux-musl.tar.gz') >/tmp/sws.tar.gz
sudo tar -xf /tmp/sws.tar.gz -C /sws --strip-components=1
sudo rm -rf /tmp/sws.tar.gz
sudo chown -R vagrant:vagrant /sws
sudo mv /sws/sws.service /etc/systemd/system/
sudo systemctl enable sws.service
sudo systemctl start sws.service
echo "done -- Static web server done"
