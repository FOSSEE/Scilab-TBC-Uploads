//Chapter-9,Example9_27,pg 9_81
V=250
FLo=16*10^3//full scale output
n=80
I=FLo*100/n//input
Il=I/V
Il=Il
Ia=1.5*Il
//at start
Ra=V/Ia
Rac=0.18//Ra actual
Ras=Ra-Rac//Ra starter
Ia=Il//Ia drops as motor starts
Eb=V-Ia*(Ra)
printf("back e.m.f\n")
printf("Eb=%.2f V",Eb)
