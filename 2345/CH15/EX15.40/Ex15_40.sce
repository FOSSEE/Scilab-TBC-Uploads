//Finding current
//Example 15.40(pg. 418)
clc
clear
phi=70000/(10^8)//flux to be set up in Wb since 10^8lines =1Wb
d=0.03//diameter in m
a=%pi*d*d/4//area of cross section in m^2
B=phi/a//flux density in Wb/m^2
Lg=0.002//length of air gap in m
Ls=(%pi*0.2)-Lg//length of steel path
Uo=4*%pi*(10^-7)//absolute permitivity
Ur=800//relative permitivity of steel
Hg=B/Uo
Hs=B/(Uo*Ur)
AT=(Hg*Lg)+(Hs*Ls)//total ampere turns required 
N=500// no of turns
I=AT/N//exciting current in amps
printf('Thus the value of exciting current is %2.3f A',I)
