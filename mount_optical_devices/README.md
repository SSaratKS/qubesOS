## Optical Discs
Passthrough reading and recording (a.k.a., “burning”) are not supported by Xen. Currently, the only options for reading and recording optical discs (e.g., CDs, DVDs, BRDs) in Qubes are:

1. Use a USB optical drive.
2. Attach a SATA optical drive to a secondary SATA controller, then assign this secondary SATA controller to a VM.
3. Use a SATA optical drive attached to ``dom0``. (Caution: This option is potentially dangerous.)

To access an optical disc via USB follow the typical procedure for attaching a USB device, then check with the Qubes Devices widget to see what device in the target qube the USB optical drive was attached to. 

Typically this would be ``sr0``. 

## Mount Disc to dom0 [Read Only]

For example, if sys-usb has device 3-2 attached to the work qube’s sr0, you would mount it with 

``mount /dev/sr0 /mnt/removable``

You could also write to a disc with ``wodim -v dev=/dev/sr0 -eject /home/user/Qubes.iso``.

## Copying from dom0

To copy a file from ``dom0`` to a VM (domU), simply use ``qvm-copy-to-vm``:

``qvm-copy-to-vm <dest-vm> <file>``

The file will arrive in your destination VM in the ``~/QubesIncoming/dom0/`` directory.

## Burning Windows.ISO

```
mount /dev/sr0 /mnt/removable

qvm-copy-to-vm training /mnt/removable/Windows.iso

wodim -v dev=/dev/sr0 -eject /home/user/QubesIncoming/dom0/Windows.iso
```
