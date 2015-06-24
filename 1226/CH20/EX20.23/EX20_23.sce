clc;funcprot(0);//EXAMPLE 20.23
// Initialisation of Variables
v1=2.2;...........//free air delivered by the compressor in m^3/min
p1=1;........//Suction pressure in bar
t1=298;.......//Suction temperature in K
pd=55;........//Delivery pressure in bar
N=210;.......//Compressor rpm
n=1.3;........//Compression index
k=0.05;.......//Clearance ratio for high pressure and low pressure cylinders
R=287;.......//Gas constant in J/kgK
ns=2;.......//No of stages
//Calculations
ps=p1;
m =(p1*v1*10^5)/(R*t1);.........//Mass of air deivered in m^3/min
W=(ns*(n/(n-1)))*m*R*t1*(((pd/ps)^((n-1)/(ns*n)))-1);...........//Work done by compressor in Nm/min
P=W/(60*1000);...........//Power required to run the compressor
disp(P,"Power required to run the compressor in kW:")
pi=sqrt(ps*pd);........//Intermediate pressure in bar
etav1=(1+k)-(k*((pi/p1)^(1/n)));...........//Volumetric efficiency of the low pressure cylinder 
Vs=(v1*10^6)/(etav1*N);............//Swept volume in cm^3
dlp=(Vs/((%pi/4)))^(1/3);..........//Diameter of low pressure cylinder in cm
llp=dlp;.................//Stroke of low pressure cylinder in cm
disp(dlp,"Bore of low pressure cylinder in cm:")
disp(llp,"Stroke of low pressure cylinder in cm:")
dhp=sqrt(dlp*dlp/pi);.........//Diameter of high pressure cylinder in cm
lhp=llp;
disp(dhp,"Bore of high pressure cylinder in cm:")
disp(lhp,"Stroke of high pressure cylinder in cm:")
rcv=pi/ps;.....//Ratio of cylinder volumes
disp(rcv,"Ratio of cylinder volumes:")
