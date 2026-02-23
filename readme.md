# Cinnamon Desklet Manager Auto Move Desklets
These files add an additional feature to Cinnamon Desklets in Linux Mint, automatically switching the position of the desklets alternating between the left and right side of your screen.
## Advice
* Desklet grid spacing should be set to 20
* Only works properly if desklets are in a single vertical column
* Desktop icons may be hidden or moved by this if they are in the way.
* Still works if desklets are locked
* It's a bit jank!
## Installing Files
1. Copy file [deskletManager.js] (../src/deskletManager.js) to the following path:

```usr/share/cinnamon/js/ui/```

Replace the file with this one, recommended you backup the existing file first.

2. Copy file [cs_desklets.py] (../src/cs_desklets.py) to the following path:

```usr/share/cinnamon/cinnamon-settings/modules/```

Replace the file there with this one, recommend you backup the existing file first.

3. Copy file [org.cinnamon.gschema.xml] (../src/org.cinnamon.gschema.xml) to the following path (or see alternate method below):

```usr/share/glib-2.0/schemas/```

Replace the file there with this one, recommend you backup the existing file first.

### Alternate Method Step 3
Instead of over-writing schema file, open the existing schema file in the path described above, and enter the following XML somewhere around the exisitng desklet entries.

```
<key name="desklet-alternate-side" type="b">
    <default>false</default>
    <summary> Whether desklets alternate left and right</summary>
    <description> Enabling this allows desklets' position to alternate betweeen the left and right side of your screen.</description>
</key>
<key name="desklet-alternate-side-interval" type="i">
    <default>60</default>
    <summary>The interval between alternating desklet sides</summary>
    <description>If desklet-alternate-side is enabled, the desklets wills alternate left and right sides after this many minutes.</description>
</key>

```

## Re-create Schema
Open a terminal and run the following command:

``` sudo glib-compile-schemas /usr/share/glib-2.0/schemas/ ```
## Restart Cinnamon
Right click on taskbar and click Troubleshoot -> Restart Cinnamon.