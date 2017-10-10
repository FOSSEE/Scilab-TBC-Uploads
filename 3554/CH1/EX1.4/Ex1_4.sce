// Exa 1.4

clc;
clear all;

// Given data
x1= 49.7;
x2= 50.1;
x3= 50.2;
x4= 49.6;
x5= 49.7;

// solution

X_mean= (x1+x2+x3+x4+x5)/5; // Arithmatic mean

d1= x1-X_mean;
d2= x2-X_mean; // deviation from each value
d3= x3-X_mean;
d4=x4-X_mean;
d5=x5-X_mean;

d_total= d1+d2+d3+d4+d5; //Algebraic sum of deviations

printf('The arithmatic mean is %.2f \n \n',X_mean);
printf(' Deviation from x1 is %.2f \n ',d1);
printf('Deviation from x2 is %.2f \n ',d2);
printf('Deviation from x3 is %.2f \n ',d3);
printf('Deviation from x4 is %.2f \n ',d4);
printf('Deviation from x5 is %.2f \n \n',d5);
printf(' The algebraic sum of deviation is %d \n',d_total);
