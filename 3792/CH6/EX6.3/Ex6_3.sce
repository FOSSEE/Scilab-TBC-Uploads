// SAMPLE PROBLEM 6/3
clc;funcprot(0);
// Given data
W_b=644;// lb
r_i=12;// inch
r_o=24;// inch
theta=45;// degree
P=400;// lb
k_o=18;// inch
W=322;// lb
g=32.2;// lb

// Calculation
// Solution 1
// I=k^2*m
Ibar=(k_o/12)^2*(W/g);// lb-ft-sec^2
function[X]=acceleration(y)
// SigmaM_G=Ibar*alpha
    X(1)=((P*(r_o/12))-(y(1)*(r_i/12)))-(Ibar*y(2));
// SigmaF_y=m*a_y
    X(2)=((y(1)-W_b))-((W_b/g)*y(3));
// a_t=r*a;
    X(3)=y(3)-((r_i/12)*y(2));
endfunction
y=[100 1 1];
z=fsolve(y,acceleration);
T=z(1);// lb
alpha=z(2);// rad/sec^2
a=z(3);// ft/sec^2
// SigmaF_x=0
O_x=P*cosd(theta);// lb
// SigmaF_y=0
O_y=W+T+(P*sind(theta));// lb
O=sqrt(O_x^2+O_y^2);// lb
printf("\nSolution I:T=%3.0f lb,alpha=%1.2f rad/sec^2,a=%1.2f ft/sec^2,O=%4.0f lb",T,alpha,a,O);
// Solution 2
function[Y]=acceleration(x)
// SigmaM_o=(Ibar*alpha)+(m*abar*d)
    Y(1)=((P*(r_o/12))-(W_b*(r_i/12)))-((Ibar*x(1))+((W_b/g)*x(2)*(r_i/12)));
// a_t=r*a;
    Y(2)=x(2)-((r_i/12)*x(1));
endfunction
x=[1 1];
m=fsolve(x,acceleration);
alpha=m(1);// rad/sec^2
a=m(2);// ft/sec^2
// SigmaF_y=Sigmam*(a_ybar)
O_y=(W+W_b+(P*sind(theta)))+(((W/g)*(0))+((W_b/g)*alpha));// lb
// SigmaF_x=Sigmam*(a_xbar)
O_x=P*sind(theta);// lb
