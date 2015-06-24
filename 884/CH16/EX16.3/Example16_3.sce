// Computation of pH using common ion effect

clear;
clc;

printf("\t Example 16.3\n");

Ka=1.8*10^-5;//ionisation constant of acid

//(a)
InitCH3COONa=1;//Initial concentration of CH3COONa solution and is equal to conc of Na+ and CH3COO- as it completely dissociates, M

InitCH3COOH=1;//Initial concentration of CH3COOH solution, M
//Let 'x' be the equilibrium concentration of the [H+] and hence conc of [CH3COO-] ions is '0.3 + x', M

x=Ka*InitCH3COOH/InitCH3COONa;//from the definition of ionisation constant Ka=[H+]*[CH3COO-]/[CH3COOH]=x*(1+x)/(1-x), which reduces to x(approximation)

pH=-log10(x);//since x is the conc. of [H+] ions

printf("\t (a) the pH of CH3COOH and CH3COONa solution is : %4.2f \n",pH);

//(b)
HCl=0.1;//moles of HCl added to 1L solution
//as H+ reacts completely with CH3COO- ions to move the reaction forward
CH3COO=InitCH3COONa-HCl;//conc of CH3COO- ions, M
CH3COOH=InitCH3COOH+HCl;//conc of CH3COOH, M

//now for the equilibrium of CH3COOH and its ions, Let 'x' be the equilibrium concentration of the [H+] and hence conc of [CH3COO-] ions is 'CH3COO + x', M
x=Ka*CH3COOH/CH3COO;//from the definition of ionisation constant Ka=[H+]*[CH3COO-]/[CH3COOH]=x*(0.9+x)/(1.1-x), which reduces to x*0.9/1.1(approximation)

pH=-log10(x);//since x is the conc. of [H+] ions

printf("\t (b) the pH of solution after adding HCl is : %4.2f \n",pH);

//End
