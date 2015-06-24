//Chapter-5,Example 15,Page 128
clc();
close();

K1=2.45*10^-5    //rate constant at 273 K

K2=162*10^-5    //rate constant at 303 K

T1=273   //temperature in Kelvin

T2=303   //temperature in Kelvin

R=1.987   //gas constant

Ea= log10(K2/K1)*2.303*R*T1*T2/(T2-T1)

printf('the activation energy is Ea = %.f cal/mole' ,Ea)
