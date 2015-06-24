//Exa 6.6
clc;
clear;
close;
//given data :
format('v',4);
tau=5;//in ns
disp("For determining the optical 3-dB bandwidth we consider high frequency 3-dB point which occur when : P(w)/P(o)=1/2");
disp("It gives : 1/((1+omega*tau)^2)^(1/2) = 1/2");
//Formula :omega=2*%pi*F;
F=sqrt(3)/(2*%pi*tau*10^-9);//in Hz
disp(F*10^-6,"Optical Modulation Bandwidth in MHz : ") ;