// SAMPLE PROBLEM 6/14
clc;funcprot(0);
// Given data
// P=1.5*t;
r_i=9/12;// ft
r_o=18/12;// ft
t_1=0;// s
t_2=10;// s
k=10/12;// ft
W=120;// lb
g=32.2;// The acceleration due to gravity in ft/sec^2
v_1=-3;// ft/sec

// Calculation
function[X]=velocity(y)
    X(1)=(((W/g)*v_1)+integrate('((1.5*t)-y(2))','t',t_1,t_2))-((W/g)*(r_o*y(1)));
    X(2)=(((W/g)*(k)^2*(v_1/r_o))+integrate('((r_o*y(2))-(r_i*(1.5*t)))','t',t_1,t_2))-((W/g)*(k^2*y(1)));
endfunction;
y=[1 10];
z=fsolve(y,velocity);
omega_2=z(1);// rad/sec clockwise
printf("\nThe angular velocity of the wheel,omega_2=%1.2f rad/sec",omega_2);
