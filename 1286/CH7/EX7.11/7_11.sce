clc
//initialisation
a=0.132//nm^4/mole^2
b=3.12*10^-5//m^3/mole^2
p=5*10^5//Nm^-2
v=20*10^-3//m3
R=8.4//j/mole/k
v2=2*10^-3//m3
p1=5//pa
//CALCULATIONS
t=((p+(a/(v*v)))*(v-b))/(5*R)
p2=(p1*v)/v2
//results
printf(' \n temperature = % 1f k',t)
printf(' \n pressure= % 1f pa',p2)
