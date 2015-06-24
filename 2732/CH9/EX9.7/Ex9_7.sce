clc
//initialization of variables
clear
s=1.6 //m
s1=4 //m
pi=28 //degrees
w=16 //kg/m^2
p=100 //kg/m^2
pl=20 //cm
pb=10 //cm
r=500 //kg/m^3
sg=5 //cm
E=12*10^4
pi=pi*%pi/180 //radians
// calculations
W=w*s+(r*pl*pb/(100*100))
P=p*s
L=P+W*cos(pi)
Mx=L*s1^2*100/8
sigma_1=Mx*6/(pb*pl^2)
My=W*sin(pi)*s1^2*100/8
sigma_2=My*6/(pl*pb^2)
st=sigma_1*sg/10
Ts=st-sigma_2
ez=Ts/E
// results
printf('The strain gauge, aligned to the z axis will give compression strain of %.1e',ez)
