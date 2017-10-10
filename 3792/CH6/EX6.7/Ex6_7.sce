// SAMPLE PROBLEM 6/7
clc;funcprot(0);
// Given data
W=60;// lb
theta=30;// degree
F=30;// lb
BGbar=2;// ft
AGbar=2;// ft
l=4;// ft
g=32.2;// The acceleration due to gravity in ft/sec^2

// Calculation
// abar_x=abar*cos(theta)=1.732*alpha;
// abar_y=abar*sin(theta)=1.0*alpha;
function[X]=force(y)
    // SigmaM_G=Ibar*alpha;
    X(1)=((F*(2*cosd(theta)))-(y(1)*(AGbar*sind(theta)))+(y(2)*(BGbar*cosd(theta))))-((1/12)*(W/g)*l^2*y(3));
    // SigmaF_x=m*abar_x;
    X(2)=(F-y(2))-((W/g)*(2*cosd(theta)*y(3)));
    // SigmaF_y=m*abar_y;
    X(3)=(y(1)-W)-((W/g)*2*sind(theta)*y(3));
endfunction
y=[10 10 1];
z=fsolve(y,force);
A=z(1);// lb
B=z(2);// lb
alpha=z(3);// rad/sec^2
printf("\nThe forces on the small end rollers ,A=%2.1f lb and B=%2.2f lb \nThe resulting angular acceleration of the bar,alpha=%1.2f rad/sec^2",A,B,alpha);
// Alternative solution
// SigmaM_C=(Ibar*alpha)+(Sigma m*abar*d)
alpha=((F*(l*cosd(theta)))-(W*2*sind(theta)))/(((1/12)*(W/g)*l^2)+((W/g)*1.732*2*cosd(theta))+((W/g)*1*2*sind(theta)));// rad/sec^2
// SigmaF_x=m*abar_x;
abar_y=2*alpha*sind(theta);// ft
A=((W/g)*abar_y)+W;// lb
// SigmaF_x=m*abar_x;
abar_x=2*alpha*cosd(theta);// ft
B=F-((W/g)*abar_x);// lb
printf("\nAlternative solution: \nThe forces on the small end rollers ,A=%2.1f lb and B=%2.2f lb \nThe resulting angular acceleration of the bar,alpha=%1.2f rad/sec^2",A,B,alpha);
