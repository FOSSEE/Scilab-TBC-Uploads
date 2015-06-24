clc
//initialisation
l=1//m
ld1=0.7//m
ld2=0.78//m
d1=0
d2=30
vd1=l-(ld1*cosd(d1))
vd2=l-(ld2*cosd(d2))
//CALCULATIONS
H=((ld1*vd1)-(ld2*vd2))/(vd1-vd2)
//results
printf(' atmospheric pressure= % 1f m',H)
