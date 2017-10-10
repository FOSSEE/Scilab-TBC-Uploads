//  to find hydralic power 
// ex 9.1 pgno.215
clc;
p= 200e3 // pressure of water
g=9800 
zs=0.1
pd=600e3
sp=0.85 // efficiency of the pump
h=((p/g)+zs)+((pd/g)+zs)
printf(" %f  m",h)
q=0.2 // increase the pressure
h1=81.6
hp=g*q*h1 // efficiency 
printf("\n %e W",hp)
n=hp/sp // electrical power i e shaft power
printf("\n electrical power = %5e  W",n)
