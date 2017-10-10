//Chapter-5,Example 16,Page 128
clc();
close();

t_half = 600    // half life

K=0.693/t_half

Ea=98600   //activation energy

A= 4*10^13   //Arrhenius factor

R=8.316   //gas constant

T=Ea/(2.303*R*log10(A/K))

printf('temperature is %.f K',T)

//mistake in textbook
