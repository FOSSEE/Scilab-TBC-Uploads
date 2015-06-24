clc
clear
//Input data
C=-183;//The normal boiling point of liquid oxygen in degrees centigrade

//Calculations
K=((C/100)*100)+273;//The normal boiling point of liquid oxygen in Kelvin
R=((C/100)*180)+492;//The normal boiling point of liquid oxygen in degree Rankine

//Output data
printf('The boiling point of liquid oxygen corresponding to -183 degree centigrade is \n\n (1)%3.0f Kelvin and (2)%3.1f degree Rankine',K,R)
