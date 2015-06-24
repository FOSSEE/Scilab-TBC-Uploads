clc;funcprot(0);//EXAMPLE 20.9
// Initialisation of Variables
m=0.6;..........//Mass of air delivered in kg/min
p2=6;.........//Delivery pressure in bar
p1=1;..........//Induction pressure in bar
t1=303;........//Induction temperature in K
D=0.1;.........//Compressor bore in m
L=0.15;........//Compressor stroke in m
k=0.03;........//Clearance ratio
etamech=0.85;....//Mechanical efficiency
R=0.287;.......//Gas constant in kJ/kgK
n=1.3;........//Compression index
//Calculations
etav=(1+k)-(k*((p2/p1)^(1/n)));..........//Volumetric efficiency
disp(etav*100,"Volumetric efficiency in %:")
IP=(n/(n-1))*(m/60)*R*t1*(((p2/p1)^((n-1)/n))-1);.........//Indicated power in kW
P=IP/etamech;...........//Power required to drive the compressor in kW
disp(P,"Power required to drive the compressor in kW:")
FAD=(m*R*t1*1000)/(p1*10^5);...........//Free air delivery in m^3/min
Vd=FAD/etav;........//Displacement volume in m^3/min
N=Vd/((%pi/4)*D*D*L);.........//Compressor rpm
disp(N,"Compressor rpm:")
