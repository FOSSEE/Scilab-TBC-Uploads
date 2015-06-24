clc
//initialisation of variables
v=0.09995//psia
t1=35//F
t2=110//F
Pv=1.2748//ft
h=0.622//ft
p=14.7//ft
m=12.99//Btu lb dry air
m1=31.13//Btu per lb dry air
//CALCULATIONS
R=v/Pv*100//percent
S=h*(v/(p-v))//lb vapor per lb dry air
Q=m1-m//Btu per lb dry air
//RESULTS
printf('The head added in the heater is=% f Btu per lb dry air',Q)
