//Example 15.5  (fig 15.4)
//transfer function of the system
clear;clc;
xdel(winsid());
mode(0);

s=poly(0,'s');
//G1 and G2 are connected in series
G1=s^2/(s+4)^2
G2=(s+1)/(s^3*(s+3))
//H1 is feedback loop
H1=(s^2+s+1)/(s*(s+3))
// Tf=transfer function
Tf=(G1*G2*H1) 
A=type(s);
disp(A,'Type of the system=')

