//EXAMPLE 27.23
//DC GENERATORS

clc;
funcprot(0);

//Variable Initialisation
emfA=400;....//emf of generator A in Volts
RiA=0.25;.....//Internal resistance of generator A in Ohms
emfB=410;.....//emf of generator B in Volts
RiB=0.4;.......//internal resistance of generator B in Ohms
lV=390;........//Load voltage in Volts

Al=(emfA-lV)/RiA;.....//Load supplied by generator A in Amperes
Bl=(emfB-lV)/RiB;.....//Load suppliedby generator B in Amperes
disp(Al,"Load supplied by generator A in Amperes:");
disp(Bl,"Load suppliedby generator B in Amperes:");
PoA=Al*lV/1000;.....//Power output from A in Kilo Watts
PoB=Bl*lV/1000;......//Power output from B in Kilo Watts
disp(PoA,"Power output from A in Kilo Watts:");
disp(PoB,"Power output from B in Kilo Watts:");

//If the load is open circuited
Vnet=emfB-emfA;.....//Net voltage in the circuit in Volts
Rt=RiA+RiB;........//Total resistance in Ohms
Cc=Vnet/Rt;........//Circulatory current in Amperes
c=round(Cc*10)/10;.....//Rounding of dcimal places
Vt=emfA+(Cc*RiA);.....//Terminal voltage in Volts
r=round(Vt*10)/10;....//Rounding of decimal places
disp(r,"Terminal voltage if the load is O.C in Volts:");
Pab=r*c;.....//Power taken by A from B in Watts
r1=round(Pab);......//Rounding of dcimal places
disp(r1,"Power taken by A from B in Watts:");
mo=emfA*c/1000;........//Mechanical output in Kilo Watts
disp(mo,"Mechanical output in Kilo Watts:");
Acu=mo*c;.........//Armature copper loss in Watts
r2=round(Acu);...//Rounding of decimal places
disp(r2,"Armature copper loss in Watts:");

