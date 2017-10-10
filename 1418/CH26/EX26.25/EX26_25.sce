//EXAMPLE 26.25
//SHUNT GENERATOR

clc;
funcprot(0);

//Variable Initialisation
Ifl=196;....................//Full load current in Amperes
V=220;.....................//Terminal voltage in Volts
Ls=720;.....................//Stray losses in Watts
Rsh=55;.....................//Shunt field coil resistance in Ohms
efffl=88;....................//Full load efficiency in Percentage

Po=V*Ifl;..................//Output power in Watts
Pin=Po/(efffl/100);..............//Electrical input in Watts
Lt=Pin-Po;.................//Total losses in Watts
Ish=V/Rsh;.................//Shunt field current in Amperes
Ia=Ifl+Ish;.................//Armature current in Amperes
Lshcu=V*Ish;................//Shunt copper loss in Watts
Lco=Ls+Lshcu;...............//Constant lossess in Watts
Lca=Lt-Lco;..................//Armature copper loss in Watts
Ra=Lca/(Ia^2);................//Armature resistance in Ohms
disp(Ra,"Armature resistance in Ohms:");
I=sqrt(Lco/Ra);...............//Load current for maximum efficiency in Amperes
y=round(I*10)/10;
disp(y,"Load current for maximum efficiency in Amperes:");
