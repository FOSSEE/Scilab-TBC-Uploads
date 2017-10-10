clc
clear
T=300;
//doping concentrations
Nc=2.8*10^19;
Nd=1*10^16;
term=Nc/Nd;
k=1.38*10^-23; //Boltzman's constant
q=1.6*10^-19; //charge
Vc=(k*T)*log(term)/q;
Vm=5.1; //workfunction
X=4.05; //affinity
Vd=(Vm-X)-Vc; //Barrier Voltage
Epsilon=11.9*8.854*10^-12;
ds=sqrt((2*Epsilon*Vd)/(q*Nd));
A=1*10^-4; //cross-sectional area
Cj=(A*Epsilon)/(ds); //junction capacitance
disp("Volts",Vc,"Conduction Band potential");
disp("Volts",Vd,"Built in Barrier Voltage");
disp("metre",ds,"Space Charge Width");
disp("Farads",Cj,"Junction Capacitance");