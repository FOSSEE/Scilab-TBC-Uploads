clc
//initialisation
a=0.0072
b=0.002
p=1
v=1
t=273//k
//CALCULATIONS
R=((p+(a/(v*v)))*(v-b))/t
Tc=(8*a)/(27*R*b)
TC=Tc-t
Tb=3.375*Tc
TB=Tb-t
//results
printf(' critical temperature of Co2= % 1f c',TC)
printf(' \nboyle temperature of Co2= % 1f k',Tb)
