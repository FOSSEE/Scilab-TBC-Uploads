clc
//initialisation of variables
h=200//Btu
a=4//lb of water
t=100//F
t1=60//F
t2=520//f
T=610//R
T1=560//F
//CALCULATIONS
T2=t2*4*1*log(T/T1)//Btu
Q=h-T2//Btu
//RESULTS
printf('The specific heat of water is unity=% f Btu',Q)
