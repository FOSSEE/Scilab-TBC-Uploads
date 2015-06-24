

// Example No.6.10.
// Page No.189.
clc;clear;
h=1;k=0;l=0;
d100=1/sqrt(h^2+k^2+l^2);
disp('Interplanar spacing for d100 plane = a');
h=1;k=1;l=0;
d110=1/sqrt(h^2+k^2+l^2);
disp('Interplanar spacing for d110 plane = a/1.414');
h=1;k=1;l=1;
d111=1/sqrt(h^2+k^2+l^2);
disp('Interplanar spacing for d111 plane = a/1.732');
x = sqrt(6);
y = sqrt(3);
z = sqrt(2);
printf("\nx = %.3f",x);
printf("\ny = %.3f",y);
printf("\nz = %.3f",z);
printf("\nd100:d110:d111 = %.3f:%.3f:%.3f",x,y,z);
