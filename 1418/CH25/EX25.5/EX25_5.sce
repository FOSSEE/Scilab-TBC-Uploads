//EXAMPLE 25.5
//INDUCTOR WITH VARYING DISPLACEMENT

clc;
funcprot(0);

//Variable Initialisation
V=3;.............//Voltage provided by voltage source connected to the inductor in Volts
Rc=0.5;...........//Coil resistance in Ohms
ic=6;.............//Coil current in Amperes
L1=40*10^-3;......//Inductance at x1 in EX25_4 in Henry
Wfd3=(1/2)*L1*ic^2;...//Energy stored in Joules
L2=25*10^-3;..........//Inductance at x2 in EX25_4 in Henry

Wfd4=(1/2)*L2*ic^2;....//Change in the field energy stored in Joules
Wfd=Wfd3-Wfd4;.........//Change in energy stored in the field in Joules
y3=L1*ic;..............//Leakage flux at x1
y4=L2*ic;...............//Leakage flux at x2
dWfd=(1/2)*ic*(y3-y4);.......//Change in energy stored in the field in Joules
disp(dWfd,"Change in energy stored in the field in Joules:");
