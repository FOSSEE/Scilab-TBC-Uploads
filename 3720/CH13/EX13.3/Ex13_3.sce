//Example 13_3
clc;clear;funcprot(0);
// Given values
b=4;// Bottom width in m 
V=51;// Flow rate in ft^3/s
// Properties
n=0.014;//The Manning coefficient 
// Calculation
//The cross-sectional area, perimeter, and hydraulic radius of the channel are A_c=4y;p=4+2y;R_h=A_c/p=(4y)/(4+y);
S_0=2/1000;

//Using the Manning equation, the flow rate through the channel can be expressed as Vdot=(a/n)*A_c*R_h^(2/3)*S_0^(1/2)
// y=y(1)
function[X]=flowdepth(y);
    X(1)=real(((1.486/n)*(4*y(1))*((4*y(1))/(4+(2*y(1))))^(2/3)*(S_0)^(1/2))-V);
endfunction
y=[1];
z=fsolve(y,flowdepth);
printf('If S_0=2/1000=0.002.The flow depth is determined to be y=%0.1f ft\n',z(1));

// If the bottom drop were just 1 ft per 1000 ft length, the bottom slope would be
S_0=0.001;
// y=y(2)
function[X]=flowdepth(z);
    X(1)=real(((1.486/0.014)*(4*z(1))*((4*z(1))/(4+(2*z(1))))^(2/3)*(0.001)^(1/2))-51);
endfunction
y=[1];
y=fsolve(z,flowdepth);
printf('If the bottom slope would be S_0=.001, and the flow depth would be y=%0.1f ft\n',y(1));
