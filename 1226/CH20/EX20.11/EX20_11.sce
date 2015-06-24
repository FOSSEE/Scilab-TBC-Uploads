clc;funcprot(0);//EXAMPLE 20.11
// Initialisation of Variables
v=30;.............//Suction volume in m^3/min
p1=1;...........//Suction pressure in bar
t1=300;.........//Suction temperature in K
p2=16;...........//Delivery pressure in bar
N=320;..........//Compressor rpm
k=0.04;.........//Clearance ratio
rld=1.2;.........//Ratio of stroke to bore
etamech=0.82;....//Mechanical efficiency
n=1.32;.........//Compression index
ti=39+273;......//Temperature inside the suction chamber in K
nc=4;.........//No of cylineders
//Calculations
W=(n/(n-1))*(p1/1000)*10^5*(v/60)*(((p2/p1)^((n-1)/n))-1);........//Work done in kW
mp=W/etamech;..........//Motor power in kW
disp(mp,"Motor power in kW:")
etav=((1+k)-(k*((p2/p1)^(1/n))))*(t1/ti);........//Volumetric efficiency
Vs=(v/nc)*(1/(2*N))*(1/etav);............//Swept volume of cylinder in m^3
D=(Vs/((%pi/4)*rld))^(1/3);.............//Compressor bore in m
L=D*rld;..............//Compresor stroke in m
disp(D*1000,"Compressor bore in mm:")
disp(L*1000,"Compressor stroke in mm:")



