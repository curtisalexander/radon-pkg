PKGTGZ=blah_0.1.tar.gz
PKGDIR=blah
RADON:=$(shell command -v radon)

all: targz pkginstall

targz:
	R CMD build $(PKGDIR)
	# tar czvf $(PKGTGZ) $(PKGDIR)

pkginstall: $(PKGDIR)
	$(RADON) --global --install_local $(PKGTGZ)

pkgremove:
	$(RADON) --global --remove $(PKGDIR)

pkgdel: 
	rm -i $(PKGTGZ)

clean: pkgremove pkgdel
