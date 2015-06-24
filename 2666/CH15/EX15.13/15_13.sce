
clc
//initialisation of variables
t=120//F
p=0.2//percent
p1=0.622//ft
p2=0.6//percent
h=0.0111//ft
q=14.7//ft
s=1.6924//ft
w=0.3385//lb per
h1=0.0185//lb per 
m=0.24//ft
w1=1061.0//ft
w2=0.445//ft
//CALCULATIONS
V=p2*h1//psia
H=p1*(h/(q-h))//lb per lb dry air
P1=p*s//psia
H1=p1*(P1/(q-h1))//lb per lb dry air
M=m*(0)+H*[(w1+w2*(0))]//Btu per lb dry air
M1=m*(68)+H1*[(w1+w2*(68))]//Btu per lb dry air
M2=m*(t)+H1*[(w1+w2*(t))]//Btu per lb dry air
Q=M1-M//Btu per lb dry air
Q1=M2-M1//Btu per lb dry air
//RESULTS
printf('the heat added in the final heater is=% f Btu per lb dry air',Q1)
