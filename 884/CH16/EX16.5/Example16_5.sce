// Computation of pH in a titration of weak acid and strong base

clear;
clc;

printf("\t Example 16.5\n");

InitCH3COOH=0.1;//Initial concentration of CH3COOH solution, M
VCH3COOH=25;//volumeof CH3COOH, mL
nCH3COOH=InitCH3COOH*VCH3COOH/1000;
Ka=1.8*10^-5;//equilibrium constant of acid, M
Kb=5.6*10^-10;//equilibrium constant of base, M

//(a)
N=0.1;//Initial concentration of NaOH solution, M
V=10;//Initial volume of NaOH solution, mL
n=N*V/1000;//Initial moles of NaOH solution

nCH3COOH_tit=nCH3COOH-n;//moles of CH3COOH after titration
nCH3COO=n;//moles of CH3COO after titration

H=nCH3COOH_tit*Ka/nCH3COO;//conc of H+ ions, M

pH=-log10(H);//since H is the conc. of [H+] ions

printf("\t (a) the pH of the solution is : %4.2f \n",pH);

//(b)
N=0.1;//Initial concentration of NaOH solution, M
V=25;//Initial volume of NaOH solution, mL
n=N*V/1000;//Initial moles of NaOH solution

nCH3COOH_tit=nCH3COOH-n;//moles of CH3COOH after titration
nCH3COO=n;//moles of CH3COO- ions after titration
V_total=V+VCH3COOH;//total volume after titration

CH3COO=nCH3COO/V_total*1000;//conc of CH3COO- ions, M
//Let 'x' be the equilibrium concentration of the [OH-] and [CH3COOH] ions after hydrolysis of [CH3COO-], M
x=sqrt(Kb*CH3COO);//from the definition of ionisation constant Kb=[OH-]*[CH3COOH]/[CH3COO-]=x*x/(0.05-x), which reduces to x*x/0.05, as x<<0.05 (approximation)

pOH=-log10(x);//since x is the conc. of [OH-] ions
pH=14-pOH;

printf("\t (b) the pH of the solution is : %4.2f \n",pH);

//(c)
N=0.1;//Initial concentration of NaOH solution, M
V=35;//Initial volume of NaOH solution, mL
n=N*V/1000;//Initial moles of NaOH solution

n_tit=n-nCH3COOH;//moles of NaOH after titration
nCH3COO=nCH3COOH;//moles of CH3COO- ions after titration
V_total=V+VCH3COOH;//total volume

OH=n_tit/V_total*1000;//conc of OH- ions, M
pOH=-log10(OH);//since OH is the conc. of [OH-] ions
pH=14-pOH;

printf("\t (c) the pH of the solution is : %4.2f \n",pH);

//End
