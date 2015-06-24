clear;
clc;

//Caption:Design an amplifier using yA702A
//Given Data
f=32;//feedback in dB
//from the Bodes plot we get that Avo = 2510
Avo = 2510;//gain
disp('The parameters are R , r (for Rdash), C (for Cdash)');
//Desensivity D = B*Rmo = Avo*(R/(R+r))
//20log10(D ) = f
k = f - (20*log10(Avo));
//Let (R+r)/R = l
l = 1/(10^(k/20));
//R/(R+r) = fp/fz
//For 45degree phase margin and 32dB of low frequency feedback we find by trial and error method from the graph
fz = 10;//in MHz
fp = fz*l;
//to determine c we can arbitrarily choose R
R = 1000;//in ohm
disp('ohm',R,'R = ');
r = (l-1)*R
disp('ohm',r,'r = ');
C = 1/(2*%pi*fz*r*10^-6);
disp('pF',C,'C = ');


//end