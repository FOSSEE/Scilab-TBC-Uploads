clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 4.4
//Caption : Program to find the Latent Heat

del_H1=2257;//latent Heat of Vapourisation of water at 373.15K(100`C)[KJ/Kg]
Tr1=373.15/647.1;
Tr2=573.15/647.1;

del_H2=approx(del_H1*((1-Tr2)/(1-Tr1))^0.38,0);//KJ/Kg
disp('KJ/Kg',del_H2,'latent Heat at 573.15K')

disp('Note: The Value as given in steam tables at 573.15K is 1406 KJ/Kg')

//End