clc
clear
//INPUT DATA
//C8H18+12.5(O2+3.773N2)=8 CO2 +9 H2O +47.16 N2 ;//FUEL COMPOSITION
n=60.66;//number of moles of air

//CALCULATIONS
n1=8+9+47.16;//number of moles of air and product
xs= 15.14/1;//air fuel ratio
xs1=1/xs;//fuel air ratio
Mr=(1/n)*(114.15+59.66*28.96);//Molecular weights of reactants
Mp=(1/n1)*(8*44+9*18+47.16*28);//Molecular weights of products

//OUTPUT
printf('(i)number of moles of air and product %3.2f \n (ii)(A/F)s %3.2f \n  (F/A)s %3.2f \n (iii)Molecular weights of reactants %3.2f \n Molecular weights of products %3.2f',n1,xs,xs1,Mr,Mp)


