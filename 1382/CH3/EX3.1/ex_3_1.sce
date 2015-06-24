// Example 3.1: calculate the input impedence, output impedence, voltage gain and current gain 
clc, clear
Hie=500; // the h-parameters of the transistor in ohm
Hfe=60; // the h-parameters of the transistor in ohm
Ic=3*10^-3; // collector current in ampere
Rb=220*10^3; // resistance in ohm
Rc=5.1*10^3; // resistance in ohm
zi=Hie;
zo=Rc;
Av=-Hfe*Rc/Hie;
Ai=-Hfe
Vcc=12; // voltage in volts
Vbe=0.6; // voltage in volts
Beta=60; // for transistor
Ib=(Vcc-Vbe)/Rb;
Ie=Beta*Ib;
re=26*10^-3/Ie;
Zin=Beta*re;
Zout=Rc;
Av1=-Rc/re;
Ai1=-Beta;
disp("part 1 -from h-parameter model")
disp(zi,"input impedence (ohm) = ")
disp(zo,"ouput impedence (ohm) = ")
disp(Ai,"current gain (unitless) = ")
disp(Av,"voltage gain (unitless) = ")
disp("part 2 -from re model")
disp(Ib,"base curret (A) = ")
disp(Ie,"emitter curret (A) = ")
disp(re,"resistance = ")
disp(Zin,"input impedence (ohm) = ")
disp(Zout,"ouput impedence (ohm) = ")
disp(Ai1,"current gain (unitless) = ")
disp(Av1,"voltage gain (unitless) = ")
