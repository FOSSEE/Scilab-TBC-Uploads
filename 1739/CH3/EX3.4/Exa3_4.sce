//Exa 3.4
clc;
clear;
close;
//Given data :
n1=1.55;//unitless
n2=1.50;//unitless
l=15;//in Km
delta=(n1-n2)/n1;//unitless
c=3*10^8;//in m/s
//Formula Intermodal_dispersion/m : deltaT_perKm=n1*delta^2/(8*c)
//Formula Intermodal_dispersion/Km : deltaT_perKm=n1*delta^2*1000/(8*c)
deltaT_perKm=n1*delta^2*1000/(8*c);//in sec/km
deltaT_perKm=deltaT_perKm*10^9//in nanosec/km
disp(deltaT_perKm,"Total intermodal dispersion per Km in nano second per Km : ");
disp("Which is very much less than the step index fibre. the total intermodal dispersion for length of 15 Km :");
deltaTtotal=deltaT_perKm*l;//in ns
disp(deltaTtotal,"Total intermodal dispersion for 15 Km length in nano second : ");
//Note : Answer in the book is not accurate.