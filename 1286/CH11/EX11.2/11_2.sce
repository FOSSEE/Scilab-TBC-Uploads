clc
//initialisation
a=0.245
b=2.67*10^-2
dp=50//pa
t1=300//k
R=8.4//j
//CALCULATIONS
cp=7*R/5
l=((2*a)/(R*t1))-b
dt=(dp*l)/cp
//results
printf(' \n drop in temperature= % 1f k',dt)
