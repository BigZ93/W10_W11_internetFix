#ipconfig /all
#netsh interface show interface

ipconfig /relese
Start-Sleep -s 1
ipconfig /flushdns
Start-Sleep -s 1
ipconfig /renew
Start-Sleep -s 1
netsh int ip set dns
Start-Sleep -s 1
netsh int ip reset
Start-Sleep -s 1
netsh winsock reset
Start-Sleep -s 1
$t = 10
while($t -gt 0){
    echo ("Komputer zrestartuje sie za " + $t + " s")
    $t--
    Start-Sleep -s 1
}
Restart-Computer

#panel sterowania -> siec i wspoldzielenie -> ustawienia adaptera -> wlasciwosci -> ipv4 -> wlasciwosci -> automatyczny dns lub 8.8.8.8 i 8.8.4.4