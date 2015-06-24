clc
//Example 4.1
//calculate change in pot. energy per unit mass and total change in pot. energy
g=9.81;//m/s^2 acc. due to gravity
dh=23;//m change in height
dpe=g*dh//m^2/s^2 change in pot energy per unit mass
printf("change in pot. energy per unit mass is %f m^2/s^2\n",dpe);
m=10;//kg
dPE=m*dpe//kgm^2/s^2 or J change in pot. energy 
printf("The total change in potential energy is %f J",dPE);