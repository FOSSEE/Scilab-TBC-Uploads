clc
// initialization of variables
clear
// part (a)
a=700 // M Pa from figure 1.8
b=100 // M Pafrom figure 1.8
m=1/6 // from figure 1.8
Y=450 // M Pa from figure 1.9
//calculations
sigma_u=a+m*b
// results
printf('\n part (a) \n')
printf(' The ultimate strength is sigma = %.f M Pa',sigma_u)
printf('\n and the yield strength is Y = %.f M Pa',Y)

// part (b)
c1=62 // from figure 1.8
d1=0.025 // from figure 1.8
c2=27 // from figure 1.10a
d2=0.04 // from figure 1.10a
// calculations
U_f1=c1*b*d1*10^6
U_f2=c2*b*d2*10^6
// results
printf('\n part (b)')
printf('\n The modulus of toughness for alloy steel is Uf = %.3e N/m^2',U_f1)
printf('\n and structural steel is Uf = %.3e N/m^2',U_f2)
