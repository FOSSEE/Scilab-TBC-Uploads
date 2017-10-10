clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 7.3.1\n')
//given data
E=1.96*10^11//youngs modulus in N/m^2
I=4*10^-7//moment of area in m^4
M1=100;M2=50//mass of discs 1 and 2 in Kgs
c=0.18//distance of disc 1 from support in m
l=0.3//distance of disc 2 from support in m
g=9.81//aceleration due to gravity in m/sec^2
//calculations
a=[(c^3/(3*E*I)),(c^2/(6*E*I)*(3*l-c));(c^2/(6*E*I)*(3*l-c)),(l^3/(3*E*I))]//from SOM
y1=g*M1*a(1,1)//considering only M1 to be acting
y2=g*M2*a(2,2)//considering only M2 to be acting
W1=sqrt(g/y1)
W2=sqrt(g/y2)
Wn=sqrt(1/((1/W1^2)+(1/W2^2)))//applying Eqn 7.3.7,Sec7.3
//output
mprintf(' The natural frequency of transverse vibration obtained from \n Dunkerly method is %4.4f rad/sec which is slightly lower\n than the correct value',Wn)
