clc();
clear;
//To determine the atomic radius
//Free volume=a^3-[(4/3)*pi*r^3];for sc,a=2r
//Therefore free volume =(2r)^3-[(4/3)*pi*r^3]
fv=30.48*10^-30;                            //free volume per unit cell
r=(fv/(8-(4/3)*%pi))^(1/3)*(10^10)          //atomic radius 
printf("The atomic radius is %f A",r); 