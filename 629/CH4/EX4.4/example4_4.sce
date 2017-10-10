clear
clc
//Example 4.4 SURFACE PROFILE OF ROTATING LIQUID
g=9.81; //[m/s^2]
d=0.5; //[m]
w=4; //(rad/s)
//(p1/gamma)+z1-(w^2*r1^2/(2*g))=(p2/gamma)+z2-(w^2*r2^2/(2*g))
//p1=p2
r1=0; //[m]
r2=d/2; //[m]
delz=(w^2*(r2^2-r1^2)/(2*g)) //delz=(z2-z1),[m]
printf("\nThe elevation difference between the liquid at the center and the wall, during rotation = %.3f m.\n",delz)