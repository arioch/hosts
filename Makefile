all:
	@gtruncate -s 0 hosts
	@ls conf.d/*.conf | sort -u | xargs cat >> hosts
