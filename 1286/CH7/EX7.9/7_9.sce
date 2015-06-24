clc
//initialisation
a=1.64*10^-2//pa m^6 /mole^2
b=2.17*10^-5//m^3/mole
t=300//k
v=10^-3//m^3/mole
R=8.31//j/mole/k
tc=33.2
pc=1.295*10^6
vc=6.5*10^-5
//CALCULATIONS
p=(((R*t)/(v-b))-(a/(v*v)))
p1=(R*t)/v
r=(8*pc*vc)/(3*tc)
p2=(((r*t)/(v-b))-(a/(v*v)))
p3=(r*t)/v
//results
printf(' value of pressure at 300k= % 1f pa',p)
printf(' \n pressure using ideal gas condition= % 1f pa',p1)
printf(' \nvalue of R at critical point= % 1f J/mole/k',r)
printf(' \n using r value in vanderwaals equation p = % 1f pa',p2)
