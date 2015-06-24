clc;funcprot(0);//EXAMPLE 20.21
// Initialisation of Variables
V=4;...........//Volume of air handled in m^3/min
p1=1.016;.....//Suction pressure in bar
t1=288;........//Suction temperature in K
N=250;.........//Compressor rpm
p3=78.65;.....//Delivery pressure in bar
vp=3;........//Piston speed in m/s
etamech=0.75;.....//mechanical efficiency
etav=0.8;........//Volumetric efficiency
n=1.25;..........//Compression index
R=287;...........//Gas constant in J/kgK
ns=2;............//No of stages
//Calculations
l=(vp*60)/(2*N);..........//Stroke length in m
d=sqrt(V/((%pi/4)*l*N*etav));.......//Bore in m
disp(l,"Stroke length in m:")
disp(d,"Bore in m:")
m=(p1*10^5*V)/(R*t1);.......//Mass of air handled by the compressor in kg/min
p2=sqrt(p1*p3);.............//Intermediate pressure in bar
t2=t1*((p2/p1)^((n-1)/n));.........//Temperature at the end of first stage compression in K
W=ns*(n/(n-1))*(m/60)*(R/1000)*(t2-t1)*(1/etamech);..........//Work required in kW
disp(W,"Work required in kW:")
