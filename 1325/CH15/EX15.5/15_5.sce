//To find the ratio nd/n
clc
//given
//damping torque is directly proposrtional to the angular velocity
C=12*10^6//Modulus of rigidity
l=3//ft
d=1//in
g=32.2//ft/s^2
I=500//lb ft^2 ; moment of inertia
J=%pi*d^4/32
q=C*J/(l*12)
n=(1/(2*%pi))*(q*g*12/(I*12^2))^(1/2)
//part 2 
b1=(q*g*12/(I*12^2))
a1=(b1/10.15)^(1/2)//by reducing equation 15.28
nd=(1/(2*%pi))*(b1-(a1/2)^2)^(1/2)
A=nd/n
printf("\nThe frequency of natural vibration = %.2f per sec\nThe frequency of damped vibration = %.2f per sec\nThe ratio nd/n = %.3f\n",n,nd,A)
