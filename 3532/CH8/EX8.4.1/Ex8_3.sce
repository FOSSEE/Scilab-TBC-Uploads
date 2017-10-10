clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 8.4.1\n')
//given data
E=1.96*10^11//youngs modulus in N/m^2
I=4*10^-7//moment of area in m^4
M1=100;M2=50//mass of discs 1 and 2 in Kgs
c=0.18//distance of disc 1 from support in m
l=0.3//distance of disc 2 from support in m
g=9.81//aceleration due to gravity in m/sec^2
//calculations
a=[(c^3/(3*E*I)),(c^2/(6*E*I)*(3*l-c));(c^2/(6*E*I)*(3*l-c)),(l^3/(3*E*I))]//from SOM
p=M1*a(1,1)+M2*a(2,2)//from Eqn 8.4.6 ,Sec 8.4
q=M1*M2*(a(1,1)*a(2,2)-(a(1,2)^2))//from Eqn 8.4.6 ,Sec 8.4
Wn1=sqrt((p-sqrt(p^2-4*q))/(2*q))//from Eqn 8.4.6 ,Sec 8.4
Wn2=sqrt((p+sqrt(p^2-4*q))/(2*q))//from Eqn 8.4.6 ,Sec 8.4
Nc1=Wn1*60/(2*%pi)//critical speed in RPM
Nc2=Wn2*60/(2*%pi)//critical speed in RPM
//output
mprintf(' The critical speeds for the system shown in fig 7.2.1 are %4.4f RPM and %4.4f RPM',Nc1,Nc2)
