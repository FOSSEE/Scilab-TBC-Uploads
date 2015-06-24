//example 5.12
clc; funcprot(0);
// Initialization of Variable
I=6;//current
V=.6;//voltage
D=.5;//duty cycle
//calculation
Rs=V/I;
disp(Rs,"resistance in ohm")
Pr=D*V*I;
disp(Pr,"power in W:")
Vp=28;
Pm=D*Vp*I;
disp(Pm,"MOSFET power in W")
T=40;//temperature
Tj=T+Pm*5.1;
disp(round(Tj),"temperature in degreeC")
