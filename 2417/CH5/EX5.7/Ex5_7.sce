//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 5.7\n\n\n");
// Chapter 5 : Properties Of Liquids And Gases
// Problem 5.7  (page no. 192) 
// Solution

//Using Table 2 ans a quality of 80%(x=0.8),we have
//at 120 psia
x=0.8;
sf=0.49201; //saturated liquid entropy //Unit:Btu/lbm*R
sfg=1.0966; //Evap. Entropy //Unit:Btu/lbm*R 
hf=312.67; //saturated liquid enthalpy //Unit:Btu/lbm 
hfg=878.5; //Evap. Enthalpy //Unit:Btu/lbm
uf=312.27; //saturated liquid internal energy //Unit:Btu/lbm 
ufg=796.0; //Unit:Btu/lbm //Evap. internal energy
vf=0.017886; //Saturated liquid specific volume //Unit:ft^3/lbm 
vfg=(3.730-0.017886); //evap. specific volume //Unit:ft^3/lbm 
sx=sf+(x*sfg); //entropy //Btu/lbm*R
printf("Entropy of a wet steam mixture at 120 psia is %f Btu/lbm*R\n",sx);
hx=hf+(x*hfg); //enthalpy  //Btu/lbm*R
printf("Enthalpy of a wet steam mixture at 120 psia is %f Btu/lbm\n",hx);
ux=uf+(x*ufg); //internal energy //Btu/lbm*R
printf("Internal energy of a wet steam mixture at 120 psia is %f Btu/lbm\n",ux);
vx=vf+(x*vfg); ///specific volume //ft^3/lbm
printf("Specific Volume of a wet steam mixture at 120 psia is %f ft^3/lbm\n",vx);
//As a check,
J=778; //ft*lbf/Btu //Conversion factor
px=120; //psia //pressure
ux=hx-((px*vx*144)/J); //1 ft^2=144 in^2 //internal energy
printf("As a check,\n")
printf("Internal energy of a wet steam mixture at 120 psia is %f Btu/lbm\n",ux);
printf("Which agrees with the values obtained above");
