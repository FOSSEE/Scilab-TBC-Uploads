clc
clear
//Input data
K=20.2;//The normal boiling point of liquid hydrogen in Kelvin

//Calculations
R=(((K-273)/100)*180)+492;//The normal boiling point of liquid hydrogen in degree Rankine

//Output data
printf('The boiling point of liquid hydrogen corresponding to 20.2 Kelvin is %3.2f degree Rankine',R)
