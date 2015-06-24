
clc
//initialisation of variables
n=150//rpm
H=40//ft
hp=20000//hp
ns=100//rpm
//CALCULATIONS
p=(ns*H^1.25/n)^2
num=hp/p
//RESULTS
printf ('\n number of units should be used= %.f ',num+1)
