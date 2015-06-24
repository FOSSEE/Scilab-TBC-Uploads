clc;funcprot(0);//EXAMPLE 17.25
// Initialisation of Variables
t=1;...................//Duration of trial in hrs
Rev=14000;.............//Revolutions
nmc=500;...............//Number of missed cycles
bl=1470;................//Net Brake load in N
mep=7.5;................//Mean effective pressure in bar
gc=20000;...............//Gas consumption in litres
lcv=21;.................//LCV of gas at supply condition in kJ/litre
D=0.25;.................//Engine bore in m
L=0.4;.................//Engine stroke in m
r=6.5;..................//Compression ratio
n=1;......................//No of cylinders
Cb=4;......................//Effective brake Circumference 
k=0.5;....................//Four stroke engine
ga=1.4;......................//Degree of freedom
//Calculations
N=Rev/60;..............//Engine rpm
Vg=gc/3600;.............//Fuel consumption in litres/s
Na=((Rev/2)-nmc)/60;................//Working cycles per min
IP=(n*mep*L*(%pi/4)*D*D*Na*10)/6;............//indicated power in kW
disp(IP,"Indicated power (in kW):")
BP=((bl)*Cb*N)/(60*1000);...............//Brake power in kW
disp(BP,"Brake power (in kW):")
etamech=BP/IP;...........................//Mechanical efficiency
disp(etamech*100,"Mechanical efficiency (in %):")
etath=IP/(Vg*lcv);.........................//Indicated thermal efficiency
disp(etath*100,"Indicated thermal efficiency (in %):")
etast=1-(1/r^(ga-1));............//Air standard efficiency 
etarel=etath/etast;............//Relative efficiency
disp(etarel*100,"Relative efficiency (in %):")
