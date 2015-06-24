// Example 4.26;//Bifringence and differnce between the propogation constt.
clc;
clear;
close;
Lb=0.05;//Birefringent Coherence over length in meter
h=0.5;//wavelength in micro meter
df=1;//spectral width in nano meter
Bf=((h*10^-6)/(Lb));//modal bifringence 
Lbc= (((h*10^-6)^2)/(Bf*df*10^-9));//COHERENCE LENGTHnin meter
Bxy=(2*%pi)/(Lb);//Diff in the propogation constant
disp(Bf,"modal bifringence  is")
disp(Bxy,"Diff in the propgation constt. is")
