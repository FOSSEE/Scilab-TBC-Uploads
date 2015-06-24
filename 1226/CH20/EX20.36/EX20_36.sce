clc;funcprot(0);//EXAMPLE 20.36
// Initialisation of Variables
v=0.08;.........//Volume of air compressed in m^3
p1=1;..........//Intake pressure in bar
p2=1.5;........//Pressure after compression in in bar
ga=1.4;.........//Ratio of specific heats
//Calculations
wac=v*(p2-p1)*10^5;........//Actual work done in Nm
wid=(ga/(ga-1))*p1*v*(10^5)*(((p2/p1)^((ga-1)/ga))-1);...........//Ideal work done per revolution in Nw
etac=wid/wac;................//Compressor efficiency
disp(etac*100,"Compressor efficiency in %:")
