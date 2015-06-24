clc;
t=0.0005; // s
P=22; // 
r=300/60; // 
R_1=0.1; // 
R_2=0.0625; // 

w=2*%pi*r;

u=2*t*P/(%pi*w^2*((R_1)^4-(R_2)^4));
disp("The viscosity of the oil is found to be ");
disp(u);
disp("Nsm-2.");
