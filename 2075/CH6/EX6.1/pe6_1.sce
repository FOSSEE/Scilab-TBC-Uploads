//example 6.1
clc; funcprot(0);
// Initialization of Variable
Vs=28;//V
Vi=5;//V
Rl=15;//ohm
Vc=.8;//V
b=20;
//calculation
Ic=(Vs-Vc)/Rl;
disp(Ic,"collector current in A:")
Pl=Ic^2*Rl;
disp(Pl,"load power in W:")
Pq=Ic*Vc;
disp(Pq,"transistor power in W:")
Ib=Ic/b*1000;
disp(Ib,"least value of base current in mA:")
Rb=(Vi-.6)/Ib;
disp(Rb*1000,"max. value of base resistance in ohm:")
printf('thus pick Rb=33ohm,1W')
clear()
