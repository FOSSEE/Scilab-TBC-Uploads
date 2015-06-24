//separation by fractional precipitation

clear;
clc;

printf("\t Example 16.11\n");

//for Br
Br=0.02;//conc of Ag+ ions, M
Ksp1=7.7*10^-13;//solubility product of AgBr
Ag1=Ksp1/Br;//conc of Ag+ ions at saturated state, M

//for Cl
Ksp2=1.6*10^-10;//solubility product of AgCl
Cl=0.02;//conc of Cl- ions, M
Ag2=Ksp2/Cl;//conc of Ag+ ions at saturated state, M
 
printf("\t to precipitate Br- without precipitating Cl- the concentration of Ag must be greater than %2.1f *10^-11 M but less than %2.1f *10^-9 M\n",Ag1*10^11,Ag2*10^9);
    
//End
