clc
clear
printf("Example 8.13 | Page number 226 \n\n");
//Part(a)Temperature of the mixture when ice-water equilibrium.
//Change in entropy during the process for:
//Part(b) ice
//Part(c) water
//Part(d) universe 

//Given Data
mi = 5 //kg //mass of ice
Ti = 273 - 10 //K //Temperature of ice
ci = 2.1 //kJ/kgK //specific heat of ice
L = 330 //kJ/kg //Latent heat
mw = 20 //kg //mass of water
Tw = 273+80 //K //Temperatur of water
cw = 4.2 //kJ/kgK //specific heat of water
//Part(a)
printf("Part (a)\n");
Tmix = ((mi*ci*(Ti-273))-(L*mi)+(mw*cw*Tw)+(mi*cw*273))/(mw*cw+mi*cw)
printf("Temperature of the mixture when equilibrium is established between ice and water = %.1f K\n\n",Tmix)
//Part (b)
printf("Part (b)\n");
delta_S_ice = mi*(ci*log(273/Ti)+L/273+cw*log(Tmix/273))//kJ/K //Entropy of ice
printf("Entropy of ice = %.2f kJ/K\n\n",delta_S_ice)
//Part (c)
printf("Part (c)\n");
delta_S_water = mw*(cw*log(Tmix/Tw))//kJ/K //Entropy of water
printf("Entropy of water = %.2f kJ/K\n\n",delta_S_water)
//Part (d)
printf("Part (d)\n");
delta_S_uni = delta_S_water+delta_S_ice//kJ/K //Entropy of universe
printf("Entropy of universe = %.2f kJ/K\n\n",delta_S_uni)
