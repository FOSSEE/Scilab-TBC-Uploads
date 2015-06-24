clear;
//clc();

// Example 12.11
// Page: 338
printf("Example-12.11  Page no.-338\n\n");

//***Data***//
// The data used in this example will e same as in the example 12.10
T = 273.15+400;//[K] given temperature
P = 150*1.01325;//[bar] given pressure

// Here again the equation will be same as in the example 12.9 like we used in the example 12.10 only K_673 is replaced by (K/K_v)*[P/(1 bar)]^(1.5+0.5-1)
K_673 = 0.013;
// The value of 'K_v' is calculated by the equation 12.BN, which is 
// log10(1/K_v) = (0.1191849/T + 91.87212/T^(2) + 25122730/T^(4))*P
// So 
K_v = (10^((0.1191849/T + 91.87212/T^(2) + 25122730/T^(4))*P))^(-1);

// Thus 
K = (K_673/K_v)*[P/1]^(1.5+0.5-1);

// Now from the previous example we have
// K = ((0+e)/(2-e))/(((0.5-0.5*e)/(2-e))^(0.5)*((1.5-1.5*e)/(2-e))^(1.5))

deff('[y]=f(e)','y = ((0+e)/(2-e))/(((0.5-0.5*e)/(2-e))^(0.5)*((1.5-1.5*e)/(2-e))^(1.5))-K');
e = fsolve(0.2,f);

// Mol fraction of the ammonia in the gas phase in the equilibrium is given by
y_NH3 = (0+e)/(2-e);

printf(" The mole fraction of the ammonia in the equilibrium is %0.2f",y_NH3);
