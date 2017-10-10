//To find the resistance offered by the dashpot
clc
//given
m=50//lb
k=100//lb/in
g=32.2//ft/s
d=m/k//static deflection
n=(1/(2*%pi))*(g*12/d)^(1/2)
//part 2
b=g*12/d
a=(b/20.79)^(1/2)
nd=(1/(2*%pi))*((b-(a/2)^2))^(1/2)
A=nd/n
printf("\nFrequency of free vibrations = %.3f per sec\nFrequency of damped vibrations = %.3f per sec \nThe ratio of the frequencies of damped and free vibrationsis %.3f \n",n,nd,A)
