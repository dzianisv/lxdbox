```sh
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser


sudo apt install tmux tilix gmrun
```


## Privacy
https://www.wikihow.com/Route-All-Network-Traffic-Through-the-Tor-Network

```sh
sudo apt install -yq git tor iptables iptables-persistent
git clone https://github.com/BlackArch/torctl
cd torctl
sudo mv service/* /etc/systemd/system/
sudo mv bash-completion/torctl /usr/share/bash-completion/completions/torctl
sed -i 's/start_service iptables//' torctl
sed -i 's/TOR_UID="tor"/TOR_UID="debian-tor"/' torctl
sudo mv torctl /usr/bin/torctl
sudo systemctl enable --now torctl-autostart.service
```