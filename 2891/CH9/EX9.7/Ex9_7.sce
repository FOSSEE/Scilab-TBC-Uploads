//Exa 9.7
clc;
clear;
close;
// given ;
Ht=300 // height of antenna in feet
Hr=100 // height of receiving antenna in feet
dt=sqrt(2*Ht) // radio horizon distance for a transmitting antenna in miles
dr=sqrt(2*Hr) // radio horizon distance for a transmitting antenna in miles
dmax=dt+dr // maximum range of space wave propagation in miles
disp(dt,"radio horizon distance for a transmitting antenna in miles:")
disp(dr,"radio horizon distance for a receiving antenna in miles:")
disp(dmax,"maximum range of space wave propagation in miles:") 
