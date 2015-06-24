clear;
clc;
//Example 5.2
Kp=0.2;//(mA/V^2)
Vtp=0.5;
iD=0.5;
Vsg=sqrt(iD/Kp)-Vtp;
printf('\nVgs=%.2f V\n',Vsg)
//to bias in p channel MOSFET 
Vsd=Vsg+Vtp;
printf('\nVsd=%.2f V\n',Vsd)
