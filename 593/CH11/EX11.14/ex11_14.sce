clear;
//clc();

// Example 11.14
// Page: 301
printf("Example-11.14  Page no.-301\n\n");

//***Data***//
P = 1*14.7;//[psia]
T = 30;//[F]
//******//
 //The vapour pressure of ice at 30F is 0.0808 psia i.e.
 p_ice = 0.0808;//[psia]
 // We may assume that the solubility of nitrogen and oxygen in solid ice is negligible
 //Thus
 x_water_in_ice = 1.00;
 //and thus use Raoult's law,finding
 y_water_vapour = x_water_in_ice*p_ice/P;
 printf(" Equilibrium concentration of water vapour in the air is %0.4f",y_water_vapour);