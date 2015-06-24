// Example 3.2: calculate the input impedence, output impedence, voltage gain and current gain 
clc, clear;
Hie=3.2; // the h-parameters of the transistor in kilo-ohm
Hfe=100; // the h-parameters of the transistor 
R1=40; // resistance in kilo-ohm
R2=4.7; // resistance in kilo-ohm;
Rc=4; // resistance in kilo-ohm;
Re=1.2; // resistance in kilo-ohm;
Rb=(R1*R2)/(R1+R2);
zi=(Rb*Hie)/(Rb+Hie);
zo=Rc;
Av=-(Hfe*Rc)/Hie;
Ai=-(Rb*Hfe)/(Rb+Hie);
Vcc=16; // voltage in volts
Vbe=0.6; // voltage in volts
Beta=100; // for transistor
Vb=(R2*Vcc)/(R1+R2);
Ib=(Vb-Vbe)/(Rb+(1+Beta)*Re);
Ic=Beta*Ib;
Ie=Ic;
re=26/Ie;
Zin=(Rb*(Beta*re*10^-3))/(Rb+(Beta*re*10^-3));
Zout=Rc;
Av1=-(Rc*10^3)/re;
Ai1=-(Beta*(Rb*10^3))/((Rb*10^3)+(Beta*re));
disp("part 1 -from h-parameter model")
disp(Rb,"base resistance (kilo-ohm) = ")
disp(zi,"input impedence (kilo-ohm) = ")
disp(zo,"ouput impedence (kilo-ohm) = ")
disp(Ai,"current gain (unitless) = ")
disp(Av,"voltage gain (unitless) = ")
disp("part 2 -from re model")
disp(Vb,"base voltage (V) = ")
disp(Ib,"base curret (mA) = ")
disp(Ic,"collector curret (mA) = ")
disp(Ie,"emitter curret (mA) = ")
disp(re,"resistance = ")
disp(Zin,"input impedence (kilo-ohm) = ")
disp(Zout,"ouput impedence (kilo-ohm) = ")
disp(Ai1,"current gain (unitless) = ")
disp(Av1,"voltage gain (unitless) = ")
