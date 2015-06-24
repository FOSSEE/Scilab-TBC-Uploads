// Exa 1.8
clc;
clear;
close;
// Given data
lembda = 0.58;// in Å
n = 1;
theta1 = 6.45;// in degree
d = (n*lembda)/(2*sind(theta1));// in Å 
disp(d,"Part (i) : At angle of 6.45°, Interplaner spacing of the crystal in Å is ");
theta2 = 9.15;// in degree
d1 = (n*lembda)/(2*sind(theta2));// in Å 
disp(d1,"Part(ii) : At angle of 9.15°, Interplaner spacing of the crystal in Å is ");
theta3 = 13;// in degree
n2 = 1;
d2 = (n2*lembda)/(2*sind(theta3));// in Å 
disp(d2,"Part(iii) : At angle of 13°, Interplaner spacing of the crystal in Å is ");
// For 
n=2;
d2 = (n*lembda)/(2*sind(theta3));// in Å 
disp(d2,"Part (iv) : The interplaner spacing in Å is : ")
disp(d1,"The interplaner spacing for some other set of reflecting in Å is : ")
