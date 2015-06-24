// Example 3.22, page no-147
clear
clc

Vi=0.6
Vi1=0.6
Vi2=0.6
R1=10*10^3
Rf=20*10^3
RL=2*10^3
I1=Vi/R1
I1=I1*1000
Av=1+Rf/R1
printf('Av=%d',Av)
Vo=Av*Vi
printf('\nVo=%.1f V',Vo)
IL=Vo/RL
IL=IL*1000
printf('\nI1=%.1f mA',IL)

//By Kirchhoff's current law
Io=I1+IL
printf('\nIo=%.2f mA', Io)
