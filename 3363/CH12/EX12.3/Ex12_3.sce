//Example 12.3, page 445
clc
h=6.63*10^-34//in J-s
I=(2*%pi)^2*2.66*10^-47//in kg-m2
m_H=1/(6.02*10^26)//in kg
E=(h^2)/I
printf("\n The energy is  %e  J",E)
s=.59*10^-19//in J
k=1.38*10^-23//in j/k
T=(s)/k
printf("\n The temperature is  %f  K",T)
//Answer diffrence is because of round off