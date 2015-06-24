//Finding loss and frequency
//Example 6.5(pg 214)
clc
clear
P=4//no of poles
N=1600// Speed in rpm
f=P*N/120//Frequency of magnetic reversal
V=5400//volume
d=7.5//density
m=(V*d)/1000//Mass of armature in kg
L=1.76//Loss in W/kg
Cl=L*m//Core loss in Watts
printf('Thus Frequency of magnetic reversal is %3.2f c/s',f)
printf('\n and Core loss is %3.2f Watts',Cl)
