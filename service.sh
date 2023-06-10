#!/system/bin/sh
# Conditional MagiskHide properties

# Late props which must be set after boot_completed
{
    until [[ "$(getprop sys.boot_completed)" == "1" ]]; do
        sleep 1
    done

# Permissions
chown root /system/etc/LawRun/LRK.init.sh
chmod +x /system/etc/LawRun/LRK.init.sh
/system/etc/LawRun/LRK.init.sh &

}&
