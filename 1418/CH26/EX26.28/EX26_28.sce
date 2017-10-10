//EXAMPLE 26.28
//LONG SHUNT COMPOUND WOUND GENERATOR

clc;
funcprot(0);

//Variable Initialisation
V=240;.............//Voltage at full load in Volts
I=100;.............//Load current in Amperes
Ra=0.1;.............//Armature resistance in Ohms
Rse=0.02;...........//Series field resistance in Ohms
Ri=0.025;..........//Interpole field resistance in Ohms
Rsh=100;...........//Shunt field resistance in Ohms
Li=1000;............//Iron loss at full load in Watts
Lwf=500;.............//Windage and friction losses in Watts

Po=V*I;...............//Output power in Watts
Rat=Ra+Rse+Ri;......//Total armature circuit resistance in Ohms
Ish=V/Rsh;.........//Shunt field current in Amperes
Ia=I+Ish;............//Armature current in Amperes
Lacu=(Ia^2)*Rat;.....//Armature circuit copper loss in Watts
Lshcu=V*Ish;.........//Shunt field copper loss in Watts
Lt=Lacu+Li+Lwf+Lshcu;...//Total loss in Watts
y=ceil(Lt);.............//Rounding of decimal places
disp(y,"Total loss in Watts:");
eff=(Po)*100/((Po)+y);..........//Efficiency in Percentage
y1=round(eff*10)/10;..............//Rounding of decimal places
disp(y1,"Efficiency in Percentage:");

