# dgx-helper-scripts
This is a collection of shell scripts for helping on support tasks for Nvidia DGX H100 cluster
It includes scripts for firmware upgrades, for debugging issues, and for several common actions needed to generate common logs requested by Nvidia enterprise support


Install these into ~/DGX folder on bright nodes.
Add nvfwupd and firmware files into some subfolder of ~/DGX
run ./00-config.sh and fill all missing info into "config" file
Check that ipmi.txt was properly filled with ipmi IPs of all dgx nodes (it should be ok if category of all dgx nodes is dgx-h100 in bright)
