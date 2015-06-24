//Example No. 5.5
clc;
clear;
close;
format('v',7);

//Given Data : 
Ia1=10;//A
V1=200;//volt
N1=1800;//rpm
Ra=0.6;//ohm
Rfield=360;//ohm
V2=180;//volt
I_line=20;//A

Ia=Ia1-V1/Rfield;//A(At changeover time)
emf=V1-Ia*Ra;//volt
Ifield=emf/Rfield;//A(At changeover time)
Iout=Ia1-Ifield;//A
Rbraking=emf/Iout;//ohm(Braking Resistance)
disp(Rbraking,"Braking resistance in ohm : ");
