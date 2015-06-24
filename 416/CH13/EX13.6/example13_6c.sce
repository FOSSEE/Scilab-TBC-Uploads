clc
clear
disp('example 13_6')
p=150 //given ,power
v=11 //given voltage
xg=0.12 //reactance of generator
xb=0.08 //reactance of line
scca=1/xg
ms=scca^2
sccb=1/(xg+xb)
ms1=sccb^2
disp('a')
printf("short circuit current is %.3fp.u \n ratio of mechanical stress on short circuit to aech. stresses on full load %.2f",scca,ms)
disp('b')
printf("short circuit current is with reactor %.3fp.u \n ratio of mechanical stress on short circuit to aech. stresses on full load with reactor %.f",sccb,ms1)