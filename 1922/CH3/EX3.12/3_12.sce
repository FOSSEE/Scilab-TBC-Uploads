clc
clear
//Initialization of variables
x=0.25
Hr=1.4278*10^6 //kJ/kmol
ti=25 //C
cp=[1.24 2.39 1.11]
M=[44 18 32]
z=[12 3 0.5]
r=4.186
//calculations
v=cp.*M.*z
v2=sum(v)
T=ti+ Hr/(v2)
//results
printf("Theoretical temperature = %d C",T)
