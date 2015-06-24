//Example 16.2
clc
syms tau s zeta w;
j=%i;
n=1;
d=tau^2*s^2+2*zeta*tau*s+1;
G=n/d
s=j*w;
G=1/(2*s*tau*zeta+s^2*tau^2+1)   
[num den]=numden(G)
d=abs(den)
cof_a_0=coeffs(den,'%i',0)
cof_a_1=coeffs(den,'%i',1) 
AR=1/d
theta=AR*atan(-cof_a_1/cof_a_0);
disp(theta,'Phase angle=')