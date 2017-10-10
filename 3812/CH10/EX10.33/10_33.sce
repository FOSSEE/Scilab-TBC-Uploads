//Example 10_33
//Find the inverse Z-transform 
clc;
clear;
z=poly(0,'z');
x=ldiv((z+1),(z-1/3),4);
disp(x,'x[n]=');
