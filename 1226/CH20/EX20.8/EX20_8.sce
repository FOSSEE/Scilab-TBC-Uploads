clc;funcprot(0);//EXAMPLE 20.8
// Initialisation of Variables
FAD=16;.......//Free air delivered in m^3/min
p1=0.96;......//Suction pressure in bar
t1=303;.......//Suction temperature in K
n=1.3;........//Compression index
k=0.04;........//Clearance ratio
p2=6;.........//Delivery pressure in bar
etamech=0.9;...//Mechanical efficiency
vp=300;.......//Piston speed in m/min
N=500;........//Compressor rpm
p=1;.....//Ambient pressure in bar
t=288;.....//Ambient temperature in K
etac=0.85;...//Compressor efficiency
R=0.287;......//Universal gas constant
//Calculations
m=(p*10^5*FAD)/(R*1000*t);...........//Mass flow rate of compressor in kg/min
t2=t1*((p2/p1)^((n-1)/n));.....//Temperature at the end of compression in K
P=(n/(n-1))*(m/60)*R*(t2-t1)*(1/etamech)*(1/etac);..........//Power input to compressor in kW
disp(P,"Power input to compressor in kW:")
L=vp/(2*N);.........//Stroke in m
disp(L*1000,"Compressor stroke in mm:")
etav=((t/t1)*(p1/p)*(1+k-(k*((p2/p1)^(1/n)))));........//Volumetric efficiency
D=sqrt(FAD/((%pi/4)*L*N*2*etav));...........//Compressor bore in m
disp(D*1000,"Compressor bore in mm:")
