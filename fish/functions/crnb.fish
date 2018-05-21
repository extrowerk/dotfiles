function crnb
	./configure LDFLAGS="-lnetwork -lbsd" CFLAGS="-D_BSD_SOURCE" $argv
end
