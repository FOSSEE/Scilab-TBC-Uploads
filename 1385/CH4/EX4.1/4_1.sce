clc
//initialisation of variables
m= 164.2 //gms
M= 60 //gms
V= 0.8 //lit
d= 1.026 //g/cc
mw= 18.02 //gms
//CALCULATIONS
M1= m/M
n= M1/V
G= V*1000*d
G1= G-m
m1= M1*1000/G1
n1= G1/mw
x= M1/(M1+n1)
y= 1-x
p= x*100
p1= y*100
P= m*100/G
//RESULTS
printf (' molarity= %.3f M',n)
printf (' \n molality= %.3f m',m1)
printf (' \n mole fraction of solute= %.4f ',x)
printf (' \n mol per cent of solute= %.2f per cent',p)
printf (' \n mol per cent of solvent= %.2f per cent',p1)
printf (' \n mol per cent acetic acid by weight= %.2f per cent',P)
