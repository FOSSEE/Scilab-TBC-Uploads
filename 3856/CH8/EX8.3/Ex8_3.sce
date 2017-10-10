//Calculate the Dissociation Constant of Acetic acid in given solution

//Example 8.3

clc;

clear;

c=0.10;  //Concentration of Acetic acid in mol L^-1

equiV=5.2;  //Equivalent conductance of Acetic acid in given concentration in equiv^-1 cm^2

equiVo=390.71;  //Equivalent conductance of Acetic acid at Infinite Dilution  in equiv^-1 cm^2

Ka=((c)*(equiV)^2)/((equiVo)*(equiVo-equiV));  //Dissociation constant of Acetic acid 

printf("Dissociation constant = %.1f*10^-5 mol L^-1  ",Ka*10^5);
