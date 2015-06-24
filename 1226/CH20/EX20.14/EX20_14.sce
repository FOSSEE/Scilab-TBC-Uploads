clc;funcprot(0);//EXAMPLE 20.14
// Initialisation of Variables
v=14;..........//Volume of air delivered in m^3
p1=1;........//Suction pressure in bar
p2=7;........//Delivery pressure in bar
N=310;........//Compressor rpm
n=1.35;........//Compression index
k=0.05;........//Clearance ratio
rld=1.5;.........//Ratio of cylinder length and diameter
//Calculations
etav=(1+k)-(k*((p2/p1)^(1/n)));..........//Volumetric efficiency
Vs=v/(etav*N);.............//Swept volume in m^3
D=((Vs)/((%pi/4)*rld))^(1/3);......//Compressor diameter in m
L=rld*D;......................//Compressor stroke in m
disp(D*100,"Compressor diameter in cm:")
disp(L*100,"Compressor stroke in cm:")
