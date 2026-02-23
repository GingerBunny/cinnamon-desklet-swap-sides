# Cinnamon Desklet Manager Auto Move Desklets

These files add an additional feature to Cinnamon Desklets in Linux Mint, automatically switching the position of the desklets alternating between the left and right side of your screen.


---
## Advice

* Desklet grid spacing should be set to 20
* Only works properly if desklets are in a single vertical column
* Desktop icons may be hidden or moved by this if they are in the way.
* Still works if desklets are locked
* It's a bit jank!


---
## Installation
1. Navigate to 'src':
  ```cd src```

2. Make the install script executable:
  ```chmod +x install.sh```

3. Run the install script:
  ```sudo ./install.sh```

4. Recreate the Schema:
  ```sudo glib-compile-schemas /usr/share/glib-2.0/schemas/```


----
## Restart Cinnamon

Hit ```alt + f2```, type 'r' in the prompt, then hit Enter. 