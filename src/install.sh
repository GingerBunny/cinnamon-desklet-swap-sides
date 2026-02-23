# 1
cp deskletManager.js /usr/share/cinnamon/js/ui/

# 2
cp /usr/share/cinnamon/cinnamon-settings/modules/cs_desklets.py /usr/share/cinnamon/cinnamon-settings/modules/cs_desklets.py.backup
cp cs_desklets.py /usr/share/cinnamon/cinnamon-settings/modules

# 3
cp /usr/share/glib-2.0/schemas/org.cinnamon.gschema.xml /usr/share/glib-2.0/schemas/org.cinnamon.gschema.xml.backup
cp org.cinnamon.gschema.xml /usr/share/glib-2.0/schemas