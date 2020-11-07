:: The sfc /scannow command will scan all protected system files, and replace corrupted files with a cached copy that is located in a compressed folder at %WinDir%\System32\dllcache. The %WinDir% placeholder represents the Windows operating system folder. For example, C:\Windows.
sfc /scannow

diskpart
list disk
select disk X
clean
create partition primary
select partition 1
active
format fs=fat32
assign
exit
