clc;funcprot(0);//EXAMPLE 20.13
// Initialisation of Variables
nc=1.25;......//Index of compression
ne=1.3;......//Index of expansion
etamech=0.85;.......//Mechanical efficiency
p1=1;.........//Suction pressure in bar
p2=7.5;.......//Delivery pressure in bar
t1=25+273;....//Suction temperature in bar
Vamb=2.2;.....//Volume of free air delivered in m^3
N=310;........//Engine rpm
k=0.05;.......//Clearance ratio
pamb=1.03;.....//Ambient pressure in bar
tamb=293;......//Ambient temperature in K
//Calculations
etav=(1+k-(k*((p2/p1)^(1/ne))));........//Volumetric efficiency
disp(etav*100,"Volumetric efficiency in %:")
v1=(pamb*Vamb*t1)/(p1*tamb);.......//Volume of air delivered at suction condition in m^3
vs=(v1/(etav*N*2));.........//Swept volume in m^3
D=(vs/(%pi/4))^(1/3);........//Diameter of the cylinder in m
L=D;
disp(D*100,"Diameter of the cylinder in cm:")
disp(L*100,"Stroke of the cylinder in cm:")
W=2*vs*10^5*(((nc)/(nc-1))*p1*(1+k)*(((p2/p1)^((nc-1)/(nc)))-1)-((ne)/(ne-1))*p1*(k*((p2/p1)^(1/ne)))*(((p2/p1)^((ne-1)/(ne)))-1));..........//Work done per cycle of operation in Nm/cycle
IP=W*N/(60*1000);...............//Indicated power in kW
BP=IP/etamech;.............//Brake power in kW
disp(BP,"Brake power in kW:")
