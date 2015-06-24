clc
// initialization of variables
clear
P=11.2 //kN
E=200 //GPa
v=0.3
Ix=181.7e+03 //mm^4
k1=0.643
b1=34.7 //mm
h1=10 //mm
b2=40 //mm
h2=10 //mm
t=10 //mm
h=50 //mm
E=E*10^3
A=b1*h1+b2*h2
R=(b1*h1*35+b2*h2*60)/A
Am=b1*log(40/30)+h1*log(80/40)
G=E/(2*(1+v))
Aw=t*h
P=P*10^3
delta_P=2*P*100/(Aw*G) + 2*P/(E*3*Ix)*100^3 + P*48.4*%pi/(2*Aw*G) + P*48.4*%pi/(2*A*E) + P*16.9/(A*(48.4*16.9-A)*E)*(100^2*%pi+%pi/2*(48.4)^2+2*100*2*48.4)
printf('seperation = %.3f mm',delta_P)

