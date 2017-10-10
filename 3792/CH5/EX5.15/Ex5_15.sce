// SAMPLE PROBLEM 5/15
clc;funcprot(0);
// Given data
N=1500;// rev/min
theta_1=60;// degree
r=5/12;// ft
ABbar=14/12;// ft

// Calculation
omega=(2*%pi*N)/60;// rad/s
a_B=r*omega^2;// ft/sec^2
omega_AB=29.5;// rad/sec
a_AB_n=ABbar*omega_AB^2;
// If we adopt an algebraic solution using the geometry of the acceleration polygon, we first compute the angle between AB and the horizontal. With the law of sines, this angle becomes 18.02 degree.
theta_2=18.02;// degree
function[X]=acceleration(y)
    X(1)=((a_B*cosd(theta_1))+(a_AB_n*cosd(theta_2))-(y(2)*sind(theta_2)))-y(1);
    X(2)=((a_B*sind(theta_1))-(a_AB_n*sind(theta_2))-(y(2)*cosd(theta_2)))-0;
endfunction
y=[1000 1000];
z=fsolve(y,acceleration)
a_AB_t=z(2);// ft/sec^2 
a_A=z(1);// ft/sec^2
r=ABbar;// ft
alpha_AB=a_AB_t/r;// rad/sec^2
printf("\nThe acceleration of the piston A,a_A=%4.0f ft/sec^2 \nThe angular acceleration of the connecting rod AB,alpha_AB=%4.0f rad/sec^2",a_A,alpha_AB);
