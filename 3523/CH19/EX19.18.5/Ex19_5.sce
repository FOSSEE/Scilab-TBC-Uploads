clear all
clc
close

epsr=2.8;//Dielectric constant of plastic
epso=8.84*1e-12;//Permittivity of air in F/m
rho_s=25*1e-6;//Surface charge in C/m^3
a=25*1e-6;//Thickness of palstic in m
b=75*1e-6;//distance in m

//Calculation of electric stress in the foil/plastic laminate in MV/m
Ea=b*rho_s/(a*epso+b*epso*epsr)
printf('Electric stress Ea in the foil/plastic laminate in %f MV/m \n',Ea/1e6)

Eb=a*rho_s/(a*epso+b*epso*epsr);
printf("field inside the electret %f V/m \n",Eb)
//Calculation of charge desnity in uC/m^2
rho_sc=epso*Eb;
printf('Calculation of charge desnity in %f uC/m^2 \n',rho_sc*1e6)
