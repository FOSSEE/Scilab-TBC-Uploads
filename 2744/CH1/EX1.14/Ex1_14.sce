clear;
clc;
D = 4;//diameter of the wheel in ft
p = 6 ;//hoop stress in tons/in^2
alpha = 0.0000062;//in "per F" 
E = 13000;//in tons/in^2
d = (1/(1+(p/E)))*D*12;//internal diameter in inches
t = (D*12-d)/(d*alpha);
printf('The least temperature the tube must be heated is, t = %.1f F',t);
