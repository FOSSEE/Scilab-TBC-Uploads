clear;
clc;

//page no. 20

l = 12;// length of the cylinder
T = 150;//temperature of water in degreeF
p1 = 14.52;//atmospheric pressure in psia
p2 = 3.72;//the pressure on the inside of the piston in psia
F = 0.25*(p1-p2)*%pi*l^2;//Force on the piston in lb
printf('Minimum force on the piston to be applied is, F = %d lb.',F);

//there is an error in the answer given in textbook
