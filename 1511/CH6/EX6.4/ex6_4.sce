// Example 6.12 page no-349
clear
clc

hie=1000
hfe=99
//hre negligible
r2=60
r3=30
r4=5
r7=20
r6=30
Rl1=20000
R23=r2*r3/(r2+r3)
R47=r4*r7/(r4+r7)
Rl=R47
Av=-hfe*Rl*10/hie
Av=floor(Av)
Ri=Rl1*1000/(Rl1+1000)
printf("Rl=%d kohm\nAv = %d\nRi=%.0f Ohm",Rl,Av*100,Ri)
