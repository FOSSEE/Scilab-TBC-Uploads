clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 7.2.1\n')
//given data
E=1.96*10^11//youngs modulus in N/m^2
I=4*10^-7//moment of area in m^4
M1=100;M2=50//mass of discs 1 and 2 in Kgs
c=0.18//distance of disc 1 from support in m
l=0.3//distance of disc 2 from support in m
g=9.81//aceleration due to gravity in m/sec^2
//calculations
a=[(c^3/(3*E*I)),(c^2/(6*E*I)*(3*l-c));(c^2/(6*E*I)*(3*l-c)),(l^3/(3*E*I))]//from SOM
y1=g*(M1*a(1,1)+M2*a(1,2))
y2=g*(M1*a(2,1)+M2*a(2,2))
Wn=sqrt(g*(M1*y1+M2*y2)/(M1*y1^2+M2*y2^2))
//now to find out lower natural frequency
F1=M1*y1*Wn^2
F2=M2*y2*Wn^2
y1new=F1*a(1,1)+F2*a(1,2)
y2new=F1*a(2,1)+F2*a(2,2)
Wnnew=sqrt((F1*y1new+F2*y2new)/(M1*y1new^2+M2*y2new^2))//actual natural frequency in rad/sec
//output
mprintf(' The practical natural frequency Wn is %4.4f rad/sec,but the lower \n natural frequency Wn`is %4.4f rad/sec which is closer to the actual\n natural frequency',Wn,Wnnew)
