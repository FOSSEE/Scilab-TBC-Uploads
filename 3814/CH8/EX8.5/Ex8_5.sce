// determine  discharge and head with two identail
clc
f=0.025
l=70
D=0.3
k=2.5
g=9.8
m=((f*l/D)+k)/(2*g*(((%pi*D*D)/4)^2))
disp(m)
mprintf('\n H1 =15 +%d Q^2',m)
b=5.35
a=112.8
c=7.9
Q=(1/(2*a))*(b+sqrt((b^2)+(4*a*c)))
mprintf('\n Q= %f m3/s',Q)
H1=15+85*Q^2
mprintf('\n H1 = %f m',H1)
