// Example 4.15//Bifringence and differnce between the propogation constt.
clc;
clear;
close;
Lb=0.09;//Birefringent Coherence over length in meter
h=0.9;//wavelength in micro meter
df=1;//spectral width in nano meter
Bf=((h*10^-6)/(Lb));//modal bifringence 
Lbc= (((h*10^-6)^2)/(Bf*df*10^-9));//Coherance length in meter
Bxy=(2*%pi)/(Lb);//Diff in the propogation constant
disp(Bf,"modal bifringence  is")
disp(Bxy,"Difference in the propgation constants. is")
