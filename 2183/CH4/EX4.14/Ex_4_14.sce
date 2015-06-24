// Example 4.14 //birefringence
clc;
clear;
close;
Lbc1=0.7;//beat length micro meter
h=1.3;//wavelength in micro meter
Bf1=((h*10^-6)/(Lbc1*10^-3));// birefringence when beat length = 0.5mm
Lbc2=80;//beat length meter
Bf2=((h*10^-6)/(Lbc2));// birefringence when beat length = 60 meter
disp(Bf1,"birefringence (high birefringent fiber) when beat length = 0.7micro meter")
disp(Bf2,"birefringence (lower birefringent fiber) when beat length = 80 meter")
