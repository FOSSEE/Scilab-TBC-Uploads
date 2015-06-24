// Example 4.25;//birefringence
clc;
clear;
close;
Lbc1=0.5;//beat length mm
h=1.3;//wavelength in micro meter
Bf1=((h*10^-6)/(Lbc1*10^-3));// birefringence when beat length = 0.5mm
Lbc2=60;//beat length meter
Bf2=((h*10^-6)/(Lbc2));// birefringence when beat length = 60 meter
disp(Bf1,"birefringence when beat length = 0.5mm")
disp(Bf2,"birefringence when beat length = 60 meter")
