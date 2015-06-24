// Example 1.45

clear; clc; close;

format('v',4);
// Given data
Zi=0.6+%i*7;//in ohm
Zo=3.5+%i*1.5;//in ohm
Sfl=6;//in %

//Calculations
//At starting S=1
Ro=real(Zo);//in ohm
Ri=real(Zi);//in ohm
Xo=imag(Zo);//in ohm
Xi=imag(Zi);//in ohm
Zeq1=Zi*Zo/(Zi+Zo);//equivalent impedence in ohm
Req1=real(Zeq1);//in ohm
//I2=V/Zeq
//Tst=I2^2*R2;//in N-m

//During full load
S=Sfl/100;//slip 
Zi=Ri/S+%i*Xi;//in ohm
Zo=Ro/S+%i*Xo;//in ohm
Zeq2=Zi*Zo/(Zi+Zo);//equivalent impedence in ohm
Req2=real(Zeq2);//in ohm
//I2=V/Zeq
//Tfl=I2^2*R2;//in N-m
TstByTfl=(1/abs(Zeq1)^2)/(1/abs(Zeq2)^2)*Req1/Req2;//ratio
disp("Starting torque is "+string(TstByTfl*100)+"% of full load torque.");
//Answer in the book is not accurate.
