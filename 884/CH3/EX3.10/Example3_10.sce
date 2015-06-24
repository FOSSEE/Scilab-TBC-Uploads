//mass of an element in a given compound

clear;
clc;

printf("\t Example 3.10\n");

massCuFeS2=3.71*10^3;//given mass of CuFeS2, kg
CuFeS2=183.5;//mol. mass of CuFeS2, g
Cu=63.55;//mol. mass of Cu, g
percentCu=Cu/CuFeS2*100;//percent Cu in CuFeS2
massCu=percentCu*massCuFeS2/100;//mass of Cu in given CuFeS2, kg

printf("\t the mass of Cu in CuFeS2 is : %1.2f*10^3 kg\n",massCu*10^-3);

//End
