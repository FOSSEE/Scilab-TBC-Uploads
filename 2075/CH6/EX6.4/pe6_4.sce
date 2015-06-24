//example 6.4
clc; funcprot(0);
// Initialization of Variable
Vd=28;//V
f=100;//frequency
I=50;//current
//calculation
Rl=(Vd-.3)/I;
disp(Rl*1000,"load resistance in ohm:")
printf('thus pick Rl=560ohm')
Rl=560;
Vp=2.4;
Ib=500;//microAmp
Rb=(Vp-.9)/Ib;
disp(Rb*1000,"max value of Rb is in kohm:")
printf('thus pick Rb=2.2kohm')
Vl=Vd-.3;
D=.5;//duty cycle
Ip=Vl/Rl;
disp(Ip*1000,"load current in mA:")
Pl=D*Vl*Ip;
disp(Pl*1000,"load power in mW:")
Pq=D*Ip*.3;
disp(Pq*1000,"power delivered in mW:")
clear()
