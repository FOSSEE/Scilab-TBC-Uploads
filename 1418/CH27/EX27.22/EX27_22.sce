//EXAMPLE 27.22
//SHUNT GENERATORS

clc;
funcprot(0);

//Variable Initialisation
ocV1=250;....//Open circuit voltage of first generator in Volts
Ra1=0.24;......//Armature resistance of first generator in Volts in Ohms
Rf1=100;........//Field resistance of first generator in Ohms
ocV2=248;......//Open circuit voltage of second generator in Volts
Ra2=0.12;......//Armature resistance of second generator in Volts in Ohms
Rf2=100;......//Field resistance of second generator in Ohms
lb=40;.....//Load on bus bars in Amperes
Ri=0.172;.....//Internal resistance in Ohms

V=ocV2-(ocV1-ocV2);.......//Terminal voltage in Volts
I=((ocV1-ocV2)/(Ra1-Ra2))-(V/Rf1);......//Current in Amperes
r=round(I*10)/10;......//Rounding of decimal places
Ib=lb-(2*r);.......//Battery current in Amperes
Vib=Ib*Ri;.........//Internal voltage drop in a battery in Volts
emf=V+Vib;......//emf of the battery in Volts
r1=round(emf);
disp(r1,"emf of the battery in Volts:");


