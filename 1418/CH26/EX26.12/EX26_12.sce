//EXAMPLE 26.12
//SEPARATELY EXCITED GENERATOR

clc;
funcprot(0);

//Variable Initialisation
N=1000;.................//Speed of  the generator in rpm
V=125;..................//Terminal voltage in Volts
I=200;..................//Load current at 1000 rpm in Amperes
N1=800;.................//Speed of the generator dropped in rpm
Ra=0.04;...............//Armature resistance in Ohms
Vb=1*2;................//Brush drop in Volts

R=V/I;.................//Load resistance in Ohms
Eg1=V+(I*Ra)+Vb;...........//Generated EMF at 1000 rpm in Volts
Eg2=Eg1*(N1/N);............//Generated EMF at 800 rpm in Volts
I1=(Eg2-Vb)/(R+Ra);.........//Load current at 800 rpm in Amperes
y=round(I1*10)/10;..........//Rounding of decimal places
disp(y,"Load current at 800 rpm in Amperes:");
