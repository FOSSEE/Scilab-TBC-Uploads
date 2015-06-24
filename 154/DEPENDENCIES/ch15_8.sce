clc
disp("Example 15.8")
printf("\n")

printf("Given")
disp("L1=0.2H L2=0.1H")
disp("M=0.1H R=10ohm")
disp("v1=142.3*sin(100*t)")
L1=0.2;L2=0.1
M=0.1;R=10;
v1mag=142.3;
w=100;
//Let Input impedance be Z1 and can be calculated as
//From the equations in 15.10
disp("Z1=%i*w*L1+((M*w)^2)/(Z2+%i*w*L2)")
Z1=%i*w*L1+((M*w)^2)/(R+%i*w*L2)
[R,Theta]=polar(Z1)
//If I1 is the input current
I1mag=v1mag/R
I1ph=-(Theta*180)/%pi
//In time domain form
printf("i1=%3.1f*sin(%d*t%3.1f deg) (A)",I1mag,w,I1ph);
