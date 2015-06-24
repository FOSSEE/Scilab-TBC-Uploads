// Example 1.12 page no-34
clear
clc

l=2 //cm
D=24 //cm
s=0.5 //cm
Vd=30 //Volts
Va=1000 //Volts

//(a)
d=Vd*l*D/(2*s*Va)
printf("\n(a)\nDeflection Produce, d=%.2f cm\n",d)

//(b)
theta=(atan(d/D))*(180/%pi)
printf("\n(b)\nTheta=%.2f°",theta)
//(c)
e=1.6*10^-19//C
m=9.1*10^-31//kg
v=sqrt(2*e*Va/m)
vr=v/cos(theta*%pi/180)
printf("\n\n(c)\nResultant Velocity, Vr=%.2f *10^6 m/sec",vr/10^6)
