//EXAMPLE 26.24(a)
//SHUNT GENERATOR

clc;
funcprot(0);

//Variable Initialisation
V=250;..............................//Terminal voltage in Volts
I=195;..............................//Load current in Amperes
Ra=0.02;...........................//Armature resistance in Ohms
Rsh=50;.............................//Shunt field resistance in Ohms
Lif=950;............................//Iron and friction losses in Watts

Ish=V/Rsh;...........//Shunt field current in Amperes
Ia=I+Ish;................//Armature current in Amperes
Va=Ia*Ra;................//Armature voltage drop in Volts
E=V+Va;................//Generated EMF in Volts
disp(E,"(a).Generated EMF in Volts:")

Lacu=(Ra*Ia^2);.......//Armature copper loss in Watts
Lshu=(V*Ish);.........//Shunt copper loss in Watts
Lcu=Lacu+Lshu;...........//Total copper loss in Watts
disp(Lcu,"(b).Total copper loss in Watts");

L=Lif+Lcu;................//Total losses in Watts
Po=V*I;....................//Output power in Watts
Pin=Po+L;..................//Output of prime mover in Watts
disp(Pin,"(c).Output of prime mover in Watts:");

Pa=Pin-Lif;.................//Power produced in armature in Watts
effm=(Pa/Pin)*100;.........//Mechanical efficiency in Percentage
y=round(effm*10)/10;......//Rounding of decimal places
disp(y,"(d).Mechanical efficiency in Percentage:");
effe=Po*100/(Po+Lcu);......//Electrical efficiency in Percentage
y1=round(effe*10)/10;.......//Rounding of decimal places
disp(y1,"Electrical efficiency in Percentage:");
effc=(Po*100/Pin);..........//Commercial efficiency in Percentage
y2=round(effc*10)/10;........//Rounding of decimal places
disp(y2,"Commercial efficiency in Percentage:");








