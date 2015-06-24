// Computation of pH using common ion effect

clear;
clc;

printf("\t Example 16.1\n");

//(a)
InitCH3COOH=0.2;//Initial concentration of CH3COOH solution, M

//Let 'x' be the equilibrium concentration of the [H+] and [CH3COO-] ions after dissociation of [CH3COOH], M

Ka=1.8*10^-5;//equilibrium constant of acid, M

x=sqrt(Ka*InitCH3COOH);//from the definition of ionisation constant Ka=[H+]*[CH3COO-]/[CH3COOH]=x*x/(0.2-x), which reduces to x*x/0.2, as x<<0.2 (approximation)

pH=-log10(x);//since x is the conc. of [H+] ions

printf("\t (a) the pH of CH3COOH solution is : %4.2f \n",pH);

//(b)
InitCH3COONa=0.3;//Initial concentration of CH3COONa solution and is equal to conc of Na+ and CH3COO- as it completely dissociates, M

InitCH3COOH=0.2;//Initial concentration of CH3COOH solution, M
//Let 'x' be the equilibrium concentration of the [H+] and hence conc of [CH3COO-] ions is '0.3 + x', M

x=Ka*InitCH3COOH/InitCH3COONa;//from the definition of ionisation constant Ka=[H+]*[CH3COO-]/[CH3COOH]=x*(0.3+x)/(0.2-x), which reduces to x*0.3/0.2(approximation)

pH=-log10(x);//since x is the conc. of [H+] ions

printf("\t (b) the pH of CH3COOH and CH3COONa solution is : %4.2f \n",pH);

//End
