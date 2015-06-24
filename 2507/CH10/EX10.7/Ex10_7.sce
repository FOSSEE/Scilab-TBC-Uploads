clc
clear
printf("Example 10.7 | Page number 354 \n\n");
//Find all thermodynamic properties
//Given data
p = 15 //bar
u = 2594.5 //kJ/kg
//Solution
//From saturated steam table based on pressure at p = 15 bar
hf = 844.87 //kJ/kg
hg = 2792.1 //kJ/kg
vf = 0.001154 //m^3/kg
vg = 0.13177 //m^3/kg
uf = hf-100*p*vf //kJ/kg
ug = hg-100*p*vg //kJ/kg
if u-ug<0.1 then
    printf("Temperature = %.2f °C\n",198.32)
    printf("Volume per kg water = %.3f m^3/kg\n",vg)
    printf("Enthalpy per kg water = %.1f kJ/kg\n",hg)
    printf("Internal energy per kg water = %.1f kJ/kg\n",ug)
    printf("Entropy per kg water = %.4f kJ/kgK",6.4448)

end
