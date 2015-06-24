// Example 4.23.b;//bandwidth length product
clc;
clear;
close;
Lbc=100;//Birefringent Coherence over length in Km
h=1.32;//wavelength in micro meter
df=1.5;//spectral width
Bf=((h*10^-6)^2)/(Lbc*10^3*df*10^-9);
Lb=(h*10^-6)/Bf;//Beat Length in Km
disp(Lb,"Beat Length in Km")
