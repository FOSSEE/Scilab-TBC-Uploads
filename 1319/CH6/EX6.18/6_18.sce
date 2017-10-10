//Total torque developed in a 4 pole shunt motor

clc;
clear;

P=4;
A=4;// Lap Winding
Z=60*20; // Slots * no of comductors in each slot
phi=23*(10^-3);
Ia=50; // Armature current

printf('The eqaution to find out torque is given by \n \n 2*pi*N*T = phi*Z*P*N/(60*A) * Ia \n\n')
T=((phi*Z*P*Ia)/(60*A))/(2*%pi/60);

printf('Total torque developed = %g Nm \n',T)


