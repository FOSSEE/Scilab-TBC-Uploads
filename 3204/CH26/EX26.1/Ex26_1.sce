// 1 APPENDIX. Ex no 1. Page no 638
//Initilization of variables
P=[-5,2,14] //Point co-ordinates
//Calculations
r=sqrt(P(1)^2+P(2)^2+P(3)^2) //Magnitude of the poistion vector
//Direction cosines
l=P(1)/r 
m=P(2)/r
n=P(3)/r
//Unit Vector calculations
r_unit=P/r
//Results
clc
printf("The Position vector is %fi+%fj+%fk \n",P(1),P(2),P(3))
printf('The value of r is %f*l i + %f*m j + %f*n k \n',r,r,r)
printf("The unit vector in the direction of r is %fi+%fj+%fk",r_unit(1),r_unit(2),r_unit(3))
