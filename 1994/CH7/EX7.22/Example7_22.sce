//Chapter-7,Example7_22,pg 7-66
V=230
I=4
t=6
Pf=1
N=2208
Et=V*I*Pf*t
K=N/Et
printf("meter constant\n")
printf("K=%.2f rev/Wh\n",K)
V=230
I=5
t=4
N=1472
Et=V*I*Pf*t
Er=N/K
Pf=(Er/Et)
printf("power factor\n")
printf("Pf=%.2f lagging",Pf)
