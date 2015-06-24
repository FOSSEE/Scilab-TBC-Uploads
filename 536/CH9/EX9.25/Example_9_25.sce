clc;
clear;

printf("\n Example 9.25")

C_p=4e3;

//If T K is the temperature of the liquid at time / s, then a heat balance on 
//the vessel gives:
x=poly([0],'x');
T_max=roots((600*0.5)*(393-x)-(10*6)*(x-293));
printf("\n\n Maximum temperature to which it can be heated = %.1f K",T_max)
//solving the equation finally we get 

t1=integrate('11111*(1/(376.3-T))','T',293,353);
printf("\n Time taken to heat the liquid from 293 K to 353 K = %.0f s",t1);
//The steam is turned off for 7200 s and during this time a heat balance gives:
//on solving as given in book we get
T=346.9;
//The time taken to reheat the liquid to 353 K is then given by:
t2=integrate('11111*(1/(376.3-T))','T',346.9,353);
printf("\n Time taken to reheat the liquid to 353 K = %.0f s",t2);