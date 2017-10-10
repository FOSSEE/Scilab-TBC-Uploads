clc;funcprot(0);//EXAMPLE 14.8
// Initialisation of Variables
Ktc=60;.........//The plane-strain Fracture toughness in MPa-m^-1/2
Ktc2=80;......//The fracture toughness of L sample in MPa-m^-1/2 
f=1.12;........//A geometry factor for the specimen and flaw
sigma=200;......//A titanium-alloy 6246 plate is exposed to a  tensile stress
a=((Ktc/(f*sigma))^2)/%pi;......//The critical flaw length of Crank in cm
a2=((Ktc2/(f*sigma))^2)/%pi;......//The critical flaw length of Crank of L sample in cm
disp(a*10^2,"  The critical flaw length of Crank in cm: ")
disp(a2*10^2,"The critical flaw length of Crank of L sample in cm:")
