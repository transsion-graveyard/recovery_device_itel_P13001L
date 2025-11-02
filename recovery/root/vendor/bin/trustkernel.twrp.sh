#!/sbin/sh

set -e

rm -rf /mnt/vendor/persist/t6_twrp/*
if [ -d /mnt/vendor/persist/t6 ]; then
    cp -rfp /mnt/vendor/persist/t6/* /mnt/vendor/persist/t6_twrp/
fi

rm -rf /mnt/vendor/protect_f/tee_twrp/*
if [ -d /mnt/vendor/protect_f/tee ]; then
    cp -rfp /mnt/vendor/protect_f/tee/* /mnt/vendor/protect_f/tee_twrp/
fi
