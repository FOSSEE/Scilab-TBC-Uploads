//EXAMPLE 27.7
//DC SHUNT MOTOR

clc;
funcprot(0);

//Variable Initialization
Mo=22.38;.....//Output power in Kilo Watts
V=440;..........//Terminal voltage in Volts
P=4;........//Total number of poles
Z=840;..........//Total number of conductors
cs=140;.........//Total number of commutator segments
eff=88;.......//Full load efficiency in Percentage
Ish=1.8;.........//Shunt field current in Amperes
bb=1.5;........//Number of segments through which brushes are shifted backwards from the geometrical neutral axis 
Aw=2;.........//Number of parallel paths in a 
Min=Mo*1000/(88/100);......//Input power in Watts
Iic=Min/V;.........//Motor input current in Amperes
r=round(Iic*10)/10;........//Rounding of decimal places
Ia=r-Ish;.......//Armature current in Amperes
I=Ia/Aw;......//Current in each conductor in Amperes
b=bb*360/cs;......//Brush lead in degrees
ATdpole=Z*I*b/360;.....//Demagnetizing ampere-turns per pole
ATcpole=Z*I*((1/(2*P))-(b/360));......//Disorting ampere-turns per pole

disp(ATdpole,"Demagnetizing ampere-turns per pole:");
disp(ATcpole,"Disorting ampere-turns per pole:");
