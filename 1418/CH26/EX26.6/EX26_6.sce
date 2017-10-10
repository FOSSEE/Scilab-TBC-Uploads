//EXAMPLE 26.6
//LONG SHUNT COMPOUND GENERATOR

clc;
funcprot(0);

//Variable Initialisation
I=150;.............//Load current in Amperes
V=230;.............//Terminal voltage in Volts
Rsh=92;............//Resistance of shunt field in Ohms
Ra=0.032;...........//Resistance of armature in Ohms
Rse=0.015;.........//Resistance of series field in Ohms
Rd=0.03;...........//Diverter resistance in Ohms
Vb=2*1;..............//Brush drop in Volts

Ish=V/Rsh;..........//Current through shunt field in Amperes
Ia=I+Ish;...........//Armature current in Amperes

Vse=Ia*Rse;........//Voltage drop on series field in Volts

Rc=(Rse*Rd)/(Rse+Rd);........//Combined resistance of series field resistance and diverter resistance in Ohms
Rta=Ra+Rc;.........//Total armature circuit resistance in Ohms

Va=Ia*Rta;..........//Armature voltage drop in Volts

y=round(Va*10)/10;...........//Rounding of decimal places
Eg=V+y;..........//EMF generated in the armature in Volts
disp(Eg,"EMF generated in the armature in Volts:");

Pt=Eg*Ia;.........//Total power generated in armature in Watts
disp(Pt,"Total power generated in armature in Watts:");

IaRa=(Ia^2)*Ra;
y1=round(IaRa);..............//Rounding of decimal places
Psedi=(Ia^2)*Rc;
y2=floor(Psedi);..............//Rounding of decimal places
Psh=V*Ish;
Pl=V*I;

Pl=y1+y2+Psh+Pl;............//Power lost in armature in Watts

disp(Pl,"Power lost in armature in Watts:");

