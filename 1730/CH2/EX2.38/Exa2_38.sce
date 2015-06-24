//Exa2.38
clc;
clear;
close;
format('v',7)
//given data
l=60;// in cm
l=l*10^-2;//in meter
d=20;// in cm 
d=d*10^-2;//in meter
D=35;// in cm;
D=D*10^-2;//in meter
r1=d/2;
r2=D/2;
rho=8000;// in ohm-cm
rho=80;// in ohm-m
// Let Insulation resistance of the liquid resistor = Ir
Ir=[rho/(2*%pi*l)]*log(r2/r1);
disp(" Insulation resistance of the liquid resistor is : "+string(Ir)+" ohm")