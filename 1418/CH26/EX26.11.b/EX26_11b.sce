//EXAMPLE 26.11(b)
//4-POLE DC SHUNT GENERATOR

clc;
funcprot(0);

//Variable Initialisation
P=4;.....................//Number of poles 
Z=120;.....................//Number of conductors
N=1000;..................//Speed of the generator in rpm
Ra=0.2;.................//Armature resistance in Ohms
Rf=250;..................//Field resistance in Ohms
V=250;...................//Terminal voltage in Volts
Vb=1*2;.................//Brush drop in Volts
Al=P;....................//Number of parallel paths for lap winding
Pg=5*10^3;.................//Output power of geyser in Watts
Pli=2.5*10^3;...............//Output power of lighting load in Watts

Ig=Pg/V;.......................//Geyser current in Amperes
Ili=Pli/V;.......................//Lighting current in Amperes
It=Ig+Ili;......................//Total current in Amperes
If=V/Rf;.......................//Field current in Amperes
Ia=If+It;......................//Armature current in Amperes
Va=Ia*Ra;.....................//Armature drop in Volts
Eg=V+Va+Vb;...................//Generated EMF in Volts
Phi=Eg*60*Al*1000/(Z*N*P);......//Flux per pole in Mili Webers
disp(Phi,"Flux per pole in Mili Webers:");
Iap=Ia/Al;....................//Armature current per parallel path in Amperes
disp(Iap,"Armature current per parallel path in Amperes:");
