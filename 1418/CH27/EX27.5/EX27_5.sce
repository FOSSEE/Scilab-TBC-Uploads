//EXAMPLE 27.5
//4-POLE SHUNT GENERATOR

clc;
funcprot(0);

//Variable Initialisation
P=4;...........//Total number of poles
Po=50;...........//Output power in Kilo Watts
V=250;...........//Terminal vltage in Volts
Z=400;.............//Total number of condctors
bs=4;............//brush lead in commutator segments
Rsh=50;...........//Shunt field resistance in Ohms
Aw=2;.............//Number of parallel paths in a wave wound generator

I=(Po*1000)/V;........//Current per path in Amperes
Ish=V/Rsh;.............//Shunt field current in Amperes
Ia=I+Ish;..................//Armature current in Amperes
Ic=Ia/Aw;...................//Current in each conductor in Amperes
ns=Z/Aw;...............//Total number of segments
b=P*360/ns;............//Brush lead in degrees
ATdpole=Z*(Ia/Aw)*(b/360);........//Demagnetization ampere-turns per pole
stp=ATdpole/Ish;.........//Extra shunt turns/poles

disp(ATdpole,"Demagnetization ampere-turns per pole:");
disp(stp,"Extra shunt turns/poles:");
