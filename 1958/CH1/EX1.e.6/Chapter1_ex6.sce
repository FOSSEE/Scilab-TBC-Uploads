clc
clear
//Input data
m=[20,80]//Masses of blocks in kg
F=1000//Force with which 20kg block is pulled in N

//Calculations
a=(F/(m(1)+m(2)))//Acceleration of the block in m/s^2
T=F-(m(1)*a)//Tension in the string in N

//Output
printf('The acceleration produced is %i m/s^2 \n The tension in the string connecting the blocks is %i N',a,T)
