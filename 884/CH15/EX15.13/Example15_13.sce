// Computation of pH for a solution of salt of weak acid and strong base

clear;
clc;

printf("\t Example 15.13\n");

InitCH3COONa=0.15;//Initial concentration of CH3COONa solution, M

InitCH3COO=InitCH3COONa;//concentration of [CH3COO-] ion after dissociation of CH3COONa solution, M
//Let 'x' be the equilibrium concentration of the [OH-] and [CH3COOH] ions after hydrolysis of [CH3COO-], M

Kb=5.6*10^-10;//equilibrium constant of hydrolysis, M

x=sqrt(Kb*InitCH3COO);//from the definition of ionisation constant Kb=[OH-]*[CH3COOH]/[CH3COO-]=x*x/(0.15-x), which reduces to x*x/0.15, as x<<0.15 (approximation)

approx=x/InitCH3COO*100;//this is the percentage of approximation taken. if it is more than 5%, we will be having higher deviation from correct value

if(approx>5)
     x1=(-Kb+sqrt((Kb^2)-(-4*1*Kb*InitCH3COO)))/(2*1);
     x2=(-Kb-sqrt((Kb^2)-(-4*1*Kb*InitCH3COO)))/(2*1);

    if(x1>0)//as only one root is positive
         x=x1;
    else 
         x=x2;
    end
end;

pOH=-log10(x);//since x is the conc. of [OH-] ions
pH=14-pOH;

printf("\t the pH of the salt solution is : %4.2f \n",pH);

percenthydrolysis=x/InitCH3COO*100;
printf("\t the percentage of hydrolysis of the salt solution is : %5.4f percent\n",percenthydrolysis);

//End
