clc
//intialisation
r=1.7*10^-6//m^3/sec
t1=3.56//c
pw=1000//kg/m^3
r1=0.34*10^-6//m^3/sec
t2=15//c
bp=360//c
c=33
pl=13600//kg/m^3
//CALCCULATIONS
m=r*pw*60
h1=m*1000*t1
h2=r1*pl*(bp-t2)*c
L=(h1-h2)/(r1*pl)
//results
printf(' latent heat of vaporisation= % 1f cal/kg',L)
