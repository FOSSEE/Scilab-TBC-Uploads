//EXAMPLE 26.19
//SEPARATELY EXCITED DC GENERATOR

clc;
funcprot(0);

//Variable Initialisation
N=1200;.................//Speed of the generator in rpm
Ia=200;.............//Armature current in Amperes
V=125;...........//Terminal voltage in Volts
N1=1000;...........//Speed of the generator dropped in rpm
Ifred=80;........//Reduction in field current in percentage
Ra=0.04;........//Armature resistance in Ohms
Vb=1*2;..........//Brush drop in Volts
Eg1=V+Vb+(Ia*Ra);..............//Generated EMF when the speed is 1200 rpm in Volts
disp(Eg1,"Generated EMF when the speed is 1200 rpm in Volts:");
Eg2=(Ifred/100)*Eg1*(N1/N);...................//Generated EMF when the speed is 1000 rpm in Volts
disp(Eg2,"Generated EMF when the speed is 1000 rpm in Volts:")


