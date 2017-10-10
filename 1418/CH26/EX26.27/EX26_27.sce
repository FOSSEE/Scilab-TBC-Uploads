//EXAMPLE 26.27
//4 POLE DC GENERATOR

clc;
funcprot(0);

//Variable Initialisation
I=20;.......//Load current in Amperes
Rl=10;......//Load resistance in Ohms
Ra=0.5;......//Armature resistance in Ohms
Rsh=50;......//Shunt field resisitance in Ohms
Vb=1*2;.......//Brush drop in Volts

V=I*Rl;......//Terminal voltage in Volts
Ish=V/Rsh;.....//Shunt field current in Amperes
Ia=I+Ish;.......//Armature current in Amperes
E=V+(Ia*Ra)+Vb;...//Generated EMF in Volts
disp(E,"Generated EMF in Volts:");
Pt=E*Ia;...........//Total power in Watts
Uo=V*I;............//Useful output in Watts

eff=(Uo/Pt)*100;........//Efficiency in Percentage
y=round(eff*10)/10;....//Rounding of decimal places
disp(y,"Efficiency in Percentage:");
