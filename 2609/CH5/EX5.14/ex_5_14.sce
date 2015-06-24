//Ex 5.14
clc;
clear;
close;
format('v',4);
R1=1;//kohm
R2=1;//kohm
R3=1;//kohm
Rf=R2+R3;//kohm
Vin=1;//V
//Capacitor remains open circuited for steady state in both cases.
Vout=-Rf/R1*Vin;//V
disp(Vout,"Output Voltage(V)");
