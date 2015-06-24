//common ion effect and solubility

clear;
clc;

printf("\t Example 16.12\n");

N_AgNO3=6.5*10^-3;//normality of AgNO3, M
AgCl=143.4;//mol mass of AgCl, g
//Let 's' be the molar solubility of AgCl in AgBr solution, M
Ksp=1.6*10^-10;//solubility product of AgCl
//Now Ag+ ion conc is AgNO3 conc + s and Cl- ion conc is 's', Now Ksp=[Ag+][Cl-]=(s+6.5*10^-3)*(s)=6.5*10^-3*s(approx as s<<6.5*10^-3)

Ag=N_AgNO3;//conc of Ag+ ions as 's' is negligible, M
s=Ksp/Ag;//as Ksp=[Ag+][Cl-], molar solubility of AgCl, M

solubility=s*AgCl;//solubility of AgCl in AgBr solution, g/L

printf("\t the solubility of AgCl in AgBr solution is : %2.2f *10^-6 g/L\n",solubility*10^6);
    
//End
