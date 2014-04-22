#!/sbin/busybox sh
# universal configurator interface

# You probably won't need to modify this file
# You'll need to modify the files in /res/customconfig directory

ACTION_SCRIPTS=/res/customconfig/actions;
source /res/customconfig/customconfig-helper;

/sbin/busybox mount -o remount,rw /;

# first, read defaults
read_defaults;

# read the config from the active profile
read_config;

. ${ACTION_SCRIPTS}/${1} ${1} ${2} ${3} ${4} ${5} ${6};
