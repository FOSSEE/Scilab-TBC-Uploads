clear;
clc;
printf("\n Example 15.4");
//Given data:
//Heat of crystallisation, q = 144 kJ/kg trihydrate
//Heat capacity of the solution, Cp = 3.5 kJ/kg deg K
//Latent heat of water at 1.33 kN/m2, λ = 2.46 MJ/kg
//Boiling point of water at 1.33 kN/m2 = 290.7 K
//Solubility of sodium acetate at 290.7 K, c2 = 0.539 kg/kg water

//Equilibrium liquor temperature
T = 290.7+11.5;
printf("\n Equilibrium liquor temperature is%.1f K",T);

//Initial concentration
c1 = 40/(100-40);
printf("\n Initial concentration c1 = % .3f kg/kg water",c1);

//Final concentration
c2 = 0.539;
printf("\n Final concentration,c2 = %.3f kg/kg water",c2);

//Ratio of molecular masses
printf("\n Ratio of molecular masses,R = %.2f",136/82);

E = {144*1.66*(0.667-0.539)+3.5*(353-302.2)*(1+0.667)*[1-0.539*(1.66-1)]}/{2460*[1-0.539*(1.66-1)]-(144*1.66*0.539)};
printf("\n\n\n E = %.3f kg/kg water originally present",E);
printf("\n yeild y = %.3f kg/sec",(0.56*(100-40)/100)*1.66*[0.667-0.539*(1-0.153)]/[1-0.539*(1.66-1)]);



