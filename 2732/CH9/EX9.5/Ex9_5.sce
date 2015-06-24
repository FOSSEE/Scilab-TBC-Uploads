clc
//initialization of the variables
clear
s=1.6 //m
s1=4 //m
pi=28 //degrees
w=16 //kg/m^2
p=100 //kg/m^2
pl=20 //cm
pb=10 //cm
r=500 //kg/m^3
// calculations
pi=pi*%pi/180 //radians
W=w*s+(r*pl*pb/(100*100))
P=p*s
L=P+W*cos(pi)
Mx=L*s1^2*100/8
sigma_1=Mx*6/(pb*pl^2)
My=W*sin(pi)*s1^2*100/8
sigma_2=My*6/(pl*pb^2)
sigma=sigma_1+sigma_2
// results
printf('Due to bending in the noth the planes, D experiences maximum \n compression of %.2f kg/cm^2 and B has maximum tension of %.2f kg/cm^2',sigma,sigma)
