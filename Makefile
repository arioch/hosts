all:
	@gtruncate -s 0 hosts
	@ls conf.d/*.conf | sort -u | xargs cat >> hosts
	@grep -iE '^0\.\0\.0\.0' 3rdparty/StevenBlack/hosts | sort -u >> hosts
	@cat hosts | sudo tee -a /etc/hosts &>/dev/null
