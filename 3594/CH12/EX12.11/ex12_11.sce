
clc
//given
N=100//rpm
ke=1.93//As per given figure
l=15//1 inch of fig = 15 ton ft 
x=40//degrees; 1 inch = 40 degree
I=150//ton ft^2
w=%pi*N/30//angular speed
E=l*x*%pi/180//energy
Ef=E*ke//fluctuation energy
Ks=Ef*g/(w^2*I)//from equation 12.14
p=Ks*100/2//dummy variables
q=p*2//dummy variables
printf("The total fluctuation of speed is %.2f percent and the variation in speed is %.2f percent on either side of \n the mean speed",q,p)
