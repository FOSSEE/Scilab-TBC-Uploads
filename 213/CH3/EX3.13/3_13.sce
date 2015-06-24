//To find the acceleration
clc
//Given:
M=75 //kg
r=0.3 //m
G=6
IA=100,IB=5 //kg-m^2
eta=90/100 //%
//Solution:
//Calculating the equivalent mass of the geared system
me=1/r^2*(IA+G^2*IB) //kg
//Calculating the total equivalent mass to be accelerated
Me=me+M //kg
//Calculating the acceleration when it is allowed to fall freely
F=M*9.81 //Accelerating force provided by the pull of gravity, N
a=F/Me //m/s^2
//Calculating the equivalent mass of the geared system when the efficiency is 90%
me1=1/r^2*(IA+G^2*IB/eta) //kg
//Calculating the total equivalent mass to be accelerated
Me1=me1+M //kg
//Calculating the acceleration when the efficiency is 90%
F1=M*9.81 //Accelerating force by the pull of gravity, N
a1=F1/Me1 //m/s^2
//Results:
printf("\n\n The acceleration of the mass M if it is allowed to fall freely, a = %.3f m/s^2.\n",a)
printf(" The acceleration of the mass M when the efficiency of the gearing system is 0.9, a = %.3f m/s^2.\n\n",a1)