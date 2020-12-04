deb:
	mkdir -p linux_packaging/deb/usr/lib/SSTviewer
	
	mkdir -p linux_packaging/deb/usr/share/applicatons
	mkdir -p linux_packaging/deb/usr/share/doc/SSTviewer
	mkdir -p linux_packaging/deb/usr/share/icons/hicolor/32x32/apps/

	cp -r src/SSTviewer.py linux_packaging/deb/usr/lib/SSTviewer
	cp -r src/lib linux_packaging/deb/usr/lib/SSTviewer/lib
	
	cp linux_packaging/SST-viewer.desktop linux_packaging/deb/usr/share/applicatons
	cp linux_packaging/sstviewer.png linux_packaging/deb/usr/share/icons/hicolor/32x32/apps/
	cp linux_packaging/copyright linux_packaging/deb/usr/share/doc/SSTviewer
	
	# cleanup
	rm -rf linux_packaging/deb/usr/lib/SSTviewer/lib/doc
	rm -rf linux_packaging/deb/usr/lib/SSTviewer/lib/src/testing
	
	# fix permissions
	chmod -R 775 linux_packaging/deb
	
	dpkg-deb --build linux_packaging/deb SSTviewer_0.5.2_20.04.deb
