//Example 8.7 //SPEED
clc;
clear;
close;
V=220;// in volts
 rpm=2100;//turns
 ra=0.5;//resistance of armature in ihms
 rsh=220;//shunt field in ohms
 Il=21;// in amperes
 R1=220;// in ohms
 Ish=V/rsh;// in amperes
 Ifs=V/(rsh+R1);//shunt field current in second case in ampere
ph1=50;//
ph2=100;//
n2=(rpm*ph2)/ph1;//speed in rpm
disp(n2,"speed in rpm is")
