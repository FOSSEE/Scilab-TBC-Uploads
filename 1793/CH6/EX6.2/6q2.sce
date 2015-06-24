clc
//initialisation of variables
G= 2.6
LL= 20
P= 20
//calclations
R= (4804574*G-195.55*(LL)^2+156971*(P)^0.5-9527830)^0.5
n= (1.195e-4)*((LL)^2)-1.964*G-(6.617e-5)*(P)+7.651
w= %e^n
//results
printf ('maximum dry density = % f kg/m^3 ',R)
printf ('optimum moisture content = % 2f ',w)

