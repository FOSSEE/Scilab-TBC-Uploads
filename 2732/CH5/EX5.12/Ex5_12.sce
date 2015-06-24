clc
// initialization of variables
clear
L=5 //cm
D=1.8 //cm
l=2.5 //cm
d=1.5 //cm
F=1 //tonne
E=2.1*10^6 //kg/cm^2
// calculations
s1=F*1000*4/(D^2*%pi)
s2=F*1000*4/(d^2*%pi)
U1=1/2*s1^2/E
U1=U1*L*D^2*%pi/4
U2=1/2*s2^2/E
U2=U2*l*d^2*%pi/4
U=U1+U2
// results
printf('The energy stored in the bolt is %.3f kg-cm',U)
