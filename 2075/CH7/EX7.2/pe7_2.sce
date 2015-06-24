//example 7.2
clc; funcprot(0);
// Initialization of Variable
Vd=12;//voltage
Vl=5;//load voltage
Rl=10;//load resistance
f=100;//frequency
L=220;//inductor
//calculation
D=Vl/Vd;
disp(round(D*100),"duty cycle in %:")
T=1/f;
disp(T*1000,"time in microsec")
t=D*T;
disp(round(t*10000)/10,"on time in microsec")
Vr=Vd-Vl;
I=Vr*round(t*10000)/10/L;
disp(I*1000,"ripple current in mA:")
Il=Vl/Rl;
disp(Il*1000,"load current in mA:")
Ip=Il+I/2;
disp(Ip*1000,"peak inductor current in mA:")
clear()
