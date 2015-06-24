//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 5.13\n\n\n");
// Chapter 5 : Properties Of Liquids And Gases
// Problem 5.13  (page no. 197) 
// Solution


//The necessary interpolations(between 450F and 460F at 330 psia) are best done in tabular forms as shown:
//  t    v
// 460  1.4945  
// 455  1.4818  
// 450  1.4691
v=1.4691+(1/2)*(1.4945-1.4691); //ft^3/lbm //specific volume
printf("The specific volume of saturated steam at 330 psia & 455F is %f ft^3/lbm\n",v);

//  t    u
// 460  1137.0  
// 455  1134.4  
// 450  1131.8 
u=1131.8+(1/2)*(1137.0-1131.8); //Btu/lbm //internal energy
printf("The internal energy of saturated steam at 330 psia & 455F is %f Btu/lbm\n",u);

//  t    h
// 460  1228.2  
// 455  1224.9  
// 450  1221.5
h=1221.5+(1/2)*(1228.2-1221.5); //enthaply //Btu/lbm
printf("The enthalpy of saturated steam at 330 psia & 455F is %f Btu/lbm\n",h);

//  t    s
// 460  1.5293  
// 455  1.5256  
// 450  1.5219
s=1.5219+(1/2)*(1.5293-1.5219); //entropy //Btu/lbm*R
printf("The entropy of saturated steam at 330 psia & 455F is %f Btu/lbm*R\n",s);
