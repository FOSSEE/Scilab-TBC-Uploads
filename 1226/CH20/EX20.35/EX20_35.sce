clc;funcprot(0);//EXAMPLE 20.35
// Initialisation of Variables
v=0.03;..............//Induced volume in m^3/rev
p1=1.013;...........//Inlet pressure in bar
rp=1.5;............//Pressure ratio
ga=1.4;...........//Ratio of specific heats
//Calculations
p2=rp*p1;
wr=(p2-p1)*(10^5)*v/1000;.....//Work input for roots compressor in kJ
disp(wr,"Work input for roots compressor in kJ/rev")
pi=(p2+p1)/2;
wv=((p2-pi)*(10^5)*v*((p1/pi)^(1/ga))*(1/1000))+((ga/(ga-1))*p1*(10^5)*(v/1000)*(((pi/p1)^((ga-1)/ga))-1));...//Work input required for vane type in kJ/rev
disp(wv,"Work input for vane compressor in kJ/rev")
