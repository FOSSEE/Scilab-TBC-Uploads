clc
//Initialization of variables
d=10 //cm
h=25 //cm
hw=15 //cm
g=9.81 //m/s^2
//calculations
z=d^2 *d*2/d^2
w=sqrt(z*2*g/(d/2)^2 *100)
N=w/(2*%pi) *60
//results
printf("Speed of rotation = %d rpm",N)
