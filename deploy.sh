if [ "$1" = "--service" ]; then
  echo 'Update service unit file...'
    # -rw-r--r-- 1 root root 382 Oct 22 17:02 /etc/systemd/system/isubata.ruby.service
    sudo cp "$HOME/isucon9-qualify/infra-config/isucari.ruby.service" /etc/systemd/system/isubata.ruby.service
    sudo systemctl daemon-reload
  echo 'Updated service unit file!'
fi

if [ "$1" = "--bundle" ]; then
  echo 'Start bundle install...'
  cd /home/isucon/isucon9-qualify/webapp/ruby
  /home/isucon/local/ruby/bin/bundle install
  cd "$HOME"
  echo 'bundle install finished!'
fi

echo 'Restart services...'
  # Save cache
  # sudo systemctl restart mysql.service
  sudo systemctl restart isubata.ruby.service
echo 'Restarted!'
