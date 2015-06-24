clc
clear
//Input data
C=6500;//Temperature of the surface of the sun in degrees centigrade

//Calculations
K=((C/100)*(100))+273;//Temperature of the surface of the sun in Kelvin
R=((C/100)*180)+492;//Temperature of the surface of the sun in degree Rankine

//Output
printf('The temperature of the surface of the sun corresponding to 6500 degrees centigrade is \n\n (1)%3.0f Kelvin and (2)%3.0f degree Rankine',K,R)
