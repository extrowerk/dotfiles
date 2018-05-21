function hp_clean
set HAIKUPORTS /Ports/haikuports
	find $HAIKUPORTS -type d -name "work-*" -exec rm -rf {} \
	find $HAIKUPORTS -type d -name "download" -exec rm -rf {} \
end
