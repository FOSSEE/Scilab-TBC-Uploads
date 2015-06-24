//Exa 3.4
clc;
clear;
close;
//given data
t=0.46*10^-6;//in meters
hf=2;//in ev
Pin=10;//in mW
alpha=50000;// in per cm
e=1.6*10^-19;//constant
Io=10^-2;//in mW
It=Io*e^(-alpha*t);//in mW
//Part (i)
disp("Thus power absorbed = 10-1 = 9 mW or 0.009 J/s");
disp((2-1.43)/2,"The fraction of each photon energy unit which is converted into heat");
//Part (ii)
disp(((2-1.43)/2)*0.009,"Energy converted into heat in J/s:");
//Part (iii)
disp(0.009/(e*2),"Number of photons per second given off from recombination events :");