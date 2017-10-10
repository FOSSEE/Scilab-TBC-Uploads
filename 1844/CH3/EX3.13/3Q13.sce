clc
R= 6370 *10^3 // radius of earth in m
D=7.86 *10^3 //Density of tape in kg/cm^3
A=0.08 // Section of tape in sq cm
E= 2*10^6 //Youngs modulus in kg/sq cm
printf('a)Correction for standardisation    nill\n')
h=0.25
L=30
Cs=h^2/(2*L)
printf(' b)Correction for slope =%f m (subtractive)\n',Cs)
a=6*10^-6
Tm=70
To=60
CT=L*a *(Tm-To)
printf( ' c)Temperature correction =%f m (additive)\n',CT)
P=10
//doing only for Po=8 
Po=8
Ct= (P-Po)*L/(A*E)
printf( ' d)Tension correction =%f m (additive)\n',Ct)
W= 0.06288*L
Cs= L*W^2/(24*Po^2)
printf(' e)Sag correction =%f m (additive)\n',Cs)
Tc= -Cs+CT+Ct+Cs

printf(' Final Correction = %f m',Tc)
