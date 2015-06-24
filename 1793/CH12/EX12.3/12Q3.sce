clc
T1=41
T3=16
a=58
T=(T1+T3)/2 + (T1-T3)*cosd(2*a)/2
tf=(T1-T3)*sind(2*a)/2
printf('a)the normal stress T = %f lb/in^2',T)
printf(' and the shear stress tf = %f lb/in^2',tf)
