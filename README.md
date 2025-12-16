# Force Restart Windows Audio (Batch Script)

A simple Windows batch script that **forcefully restarts the Windows Audio service**. Useful when audio stops working and a normal restart of the service fails.

## What This Script Does

* Finds the **svchost.exe** process hosting the `AudioSrv` service
* Force-kills that process
* Waits briefly for Windows to release the service
* Restarts required audio services

## Requirements

* Windows 10 / Windows 11
* **Administrator privileges** (required to stop/start system services)

## How to Use

1. Save the script as `restart-audio.bat`
2. Right-click the file
3. Select **Run as administrator**
4. Wait for the confirmation message

## Notes / Warnings

* This script **forcefully kills** a system `svchost.exe` process. While generally safe for this use case, use it at your own risk.
* Any applications currently using audio may briefly freeze or lose sound during the restart.

## Use Cases

* No sound after sleep / hibernate
* Audio device disappeared
* Windows Audio service stuck or not restarting normally

## License

MIT License (or choose any license you prefer)
