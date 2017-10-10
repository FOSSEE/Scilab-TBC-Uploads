clc
deltaHp=3274.5 //in kJ
a=5
b=6
c=2
d=37.619
CO2=62.75
H2O=52.96
O2=38.67
N2=37.13
e=((a*CO2)+(b*H2O)+(c*O2)+(d*N2))*10^-3
T1=298
T=(deltaHp+(e*T1))/e
mprintf("T=%fK",T)//ans vary due to roundoff error
