clc;
disp("Example A.14")
d=0.025 // diameter in m
density= 1000 // in kg/m^3
G=4*40/(60*%pi*d*d) // flow rate
U=G/density // velocity in m/s
mew=0.025
Re=d*G/mew
Q=40/60000
delP=128*Q*mew/(%pi*d*d*d*d)
disp(delP,"Pressure gradient for the liquid is ")
