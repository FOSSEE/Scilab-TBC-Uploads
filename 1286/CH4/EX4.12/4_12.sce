clc
//initialisation
p=4.60//mm
p1=0.34//mm
t=0.007//c
r=760//mm
//CALCULATIONS
P=(p+(p1*t))
fp=r-P
d=r*t/fp
//results
printf(' lowering of melting point of ice= % 5f C',d)
