c=0.1;//concentration of the solution//
Kw=1.0*10^-14;
Ka=7.24*10^-10;//dissociation constant of HCN//
printf('For a salt of this type the hydrolysis reaction is\nCN- +H2O = HCN + OH-');
Kh=Kw/Ka;//hydrolysis constant//
printf('\nHydrolysis constant of the solution=Kh=%f=1.381*10^-5',Kh);
printf('\nIonization constant is generally calculated using  Kh=(c*a^2)/(1-a)');
printf('\nIonization constant=a=0.011680=1.168*10^-2');
printf('\nThe degree of hydrolysis is 1.168percent');
PKw=23.14;
PH=0.5*(PKw+log10(c));//PH of the 0.1M NaCN solution//
printf('\nPH of the 0.1M NaCN solution=PH=%f',PH);
