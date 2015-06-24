c=0.01;//concentration of the solution//
r=10^(-0.51*sqrt(c));
printf('r=%f',r);
a=r*c;//ionization constant//
printf('\nIonization constant=a=%f',a);
PH=-log10(a);//PH of the solution//
printf('\nPH of the solution=PH=%f',PH);
printf('\nBy assuming ideal behaviour PH=-log10(10^-2)=2.00');
