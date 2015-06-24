
clc
//initialisation of variables
l=20//cm
t=21.3//sec
d=0.0622//in
g=981
p1=7.8//g/cm^3
p2=0.96//g/cm^3
//CALCULATIONS
vf=l/t
r=d*2.54/2
n=2*r*r*g*(p1-p2)/(9*vf)
//RESULTS
printf (' coefficient of viscocity= %.2f poise',n)
