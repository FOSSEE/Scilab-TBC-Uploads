
clc
//initialisation of variables
p=1250//Btu per lb
E=1075//Btu per lb
f=4290//lb per hr
d=290//hp
h=33000//ft
t=778//R
t1=60//sec
//CALCULATIONS
H=f*(p-E)//Btu per hr
W=(d*h*t1)/t//Btu per hr
Q=H-W//Btu per hr
//RESULTS
printf('The radiation loss per hour from the engine=% f Btu per hr',Q)
