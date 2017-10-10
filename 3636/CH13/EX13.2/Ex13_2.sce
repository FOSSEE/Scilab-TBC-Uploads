clear;
clc;
drift_length=2*10^-4 //in cm
drift_velocity=2*10^7 //in cm/s

//Calculation
d=drift_length/drift_velocity
f=(drift_velocity*10^-2)/(2*drift_length*10^-2)

format("v",8)
disp(d,"Drift time (s)= ")
disp(f,"Operating frequency (Hz)= ")

