#!/bin/sh
set -e

sudo apt-get install \
	openssh-server \
	openssh-client \
	fail2ban \
	build-essential \
	ack-grep \
	apache2-utils \
	apt-file \
	aria2 \
	buffer \
	bzip2 \
	cmake \
	colordiff \
	connect-proxy \
	dc \
	debian-goodies \
	debsums \
	deborphan \
	diffutils \
	dmidecode \
	dnsutils \
	dos2unix \
	e2fsprogs \
	etckeeper \
	fail2ban \
	ffmpeg \
	fish \
	flac \
	ghc6 \
	gnupg \
	gzip \
	imagemagick \
	inotify-tools \
	iotop ipython \
	links \
	links2 \
	lockfile-progs \
	lsb-release \
	lzma \
	maven2 \
	md5deep \
	molly-guard \
	most \
	nano \
	ncdu \
	netcat6 \
	netcat-traditional \
	nmap \
	optipng \
	pbzip2 \
	pwgen \
	pv \
	rkhunter \
	rsync \
	strace \
	unrar \
	unzip \
	vim-nox \
	vim-scripts \
	wbritish \
	whois \
	zip

sudo apt-get install \
	dig \
	| true
for f in rc/.*; do 
	if [ -f "$f" ]; then
		[ -f $(basename "$f") ] && rm $(basename "$f")
		ln -s "$f"
	fi
done

