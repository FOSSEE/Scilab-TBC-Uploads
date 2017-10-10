clear
clc
//Example 4.7 OUTLET VELOCITY FROM DRAINING TANK
g=9.81; //[m/s^2]
delz=10; //delz=(z1-z2),[m]
//(p1/gamma)+z1-(V1^2/(2*g))=(p2/gamma)+z2-(V2^2/(2*g)), p1=p2
V1=0;//[m]
V2=sqrt(V1^2+2*g*delz) //[m/s]
printf("\nThe velocity of the liquid in the drain port = %.f m/s.\n",V2)