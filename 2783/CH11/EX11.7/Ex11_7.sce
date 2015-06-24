clc
//initialization of new variables
clear
w=1000 //RPM
r1=0.05 //m
r2=0.10 //m
bet=0 //degrees
eta=0.9
r=1000 //kg/m^3
//calculations
bet=bet*%pi/180
U2=r2*w*2*%pi/60
Cth2=U2
dp=r*eta*U2*Cth2
U1=r1*w*2*%pi/60
beta1=50 //degrees
beta1=90-beta1
beta1=beta1*%pi/180
c1=U1*tan(beta1)
m=r*c1*%pi*r1^2
P=m*U2*Cth2
//results
printf('Pressure rise is %.1f N/m^2',dp)
printf('\n mass flow rate is %.2f kg/s',m)
printf('\n Power = %.2f W',P)

//wrong answer for pressure rise part in text
