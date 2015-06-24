clear;
//clc();

// Example 12.10
// Page: 337
printf("Example-12.10  Page no.-337\n\n");

//***Data***//
Temp = 273.15+400;//[K]
P = 150*1.01325;//[bar]

// Comparing this with the example 12.9, we see that we can use the same equation , but K_673 is replaced by K_673*(P/(1bar))^(1.5+0.5-1)
K_673 = 0.013;

// So 
K = K_673*(P/1)^(1.5+0.5-1);

// We have 
// K = ((0+e)/(2-e))/(((0.5-0.5*e)/(2-e))^(0.5)*((1.5-1.5*e)/(2-e))^(1.5))
deff('[y]=f(e)','y = ((0+e)/(2-e))/(((0.5-0.5*e)/(2-e))^(0.5)*((1.5-1.5*e)/(2-e))^(1.5))-K');
e=fsolve(0.5,f);

// Thus mole fraction of the ammonia in the gas is given by 
y_NH3 = (0+e)/(2-e);

printf("The mole fraction of the ammonia in the equilibrium is %0.2f",y_NH3);