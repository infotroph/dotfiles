source ~/.profile
PS1='%?> '
RPS1='%n@%m:%~'
autoload -U compinit; compinit
sd () { echo `date "+%s"`, $1 >> ~/spamdeletion.txt }
tc() { python -c "print '$1'.title()" }

timer(){
	sleep "$1"
	echo -n "\a\a\a"
	sleep 1
	echo -n "\a\a\a"
	sleep 1
	echo -n "\a\a\a"
}

ziplint(){ 
	for i in `unzip -Z -1 $1`; do
		echo $i
		unzip -a -p $1 $i | xmllint --format -
	done
}

lgrpeek(){
        ssh -i ~/.ssh/lgr_id_rsa \
        lgr@black-spectrometer.igb.illinois.edu \
        'f=$( \
	        find ~lgr/data \
	        	-type f \
			-mmin -1 \
	        	-path '"'"'*flow*.txt'"'"' \
	        	-printf '"'"'%T@ %p\n'"'"' \
	        | sort -rn \
	        | awk '"'"'{print $2}'"'"' \
	        |head -n1) \
        && echo $f'
}

# Register a file extension with qlstephen,
# so that quicklook will display all files using it as plaintext
# usage: qladd path/to/file.ext
# Adapted from https://github.com/whomwah/qlstephen/issues/87#issuecomment-773664993
qladd() {
	type=$(
		mdls -name kMDItemContentType $1 \
		| sed -n 's/^kMDItemContentType = \"\(.*\)\"$/\1/p'
	)
	plutil -insert \
		CFBundleDocumentTypes.0.LSItemContentTypes.0 \
		-string $type \
		~/Library/QuickLook/QLStephen.qlgenerator/Contents/Info.plist
	qlmanage -r > /dev/null
}

