// SAMPLE PROBLEM 3/3
clc;clear;funcprot(0);
// Given data
m_A=250;// The mass of concrete block A in lb
m=400;// lb
theta=30;// degree
mu_k=0.5;// The coefficient of kinetic friction between the log and the ramp
x=20;// ft
g=32.2;// The acceleration due to gravity in ft/sec^2

// Calculation
// SigmaF_y=0;
N=m*cosd(theta);// lb
// SigmaF_x=ma_x;
function[X]=acceleration(y)
    X(1)=0-((2*y(2))+y(3));
    X(2)=((mu_k*N)-(2*y(1))+(m*sind(theta)))-((m/g)*y(2));
    X(3)=(m_A-y(1))-((m_A/g)*y(3));
endfunction
y=[100,1,1];
z=fsolve(y,acceleration);
T=z(1);// lb
a_A=z(3);// ft/sec^2
a_C=z(2);// ft/sec^2
v_A=sqrt(2*a_A*x);// ft/sec
printf("\nThe velocity of the block as it hits the ground at B,v_A=%2.2f ft/sec",v_A);
