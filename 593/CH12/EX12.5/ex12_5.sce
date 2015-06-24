clear;
//clc();

// Example 12.5
// Page: 324
printf("Example-12.5  Page no.-324\n\n");

//***Data***//
Temp = 298;//[K]
K = 29.6;// equilibrium constant at 298 K 
P = 1;//[bar]
n_water_0 = 0.833;//[mol]
n_ethylene_0 = 1;//[mol]
n_ethanol_0 = 0;//[mol]
n_T_0 = (n_water_0+n_ethylene_0+n_ethanol_0);//[mol]

// From the previous example, we have 
// [(0+e)/(1.833-e)]/([(1-e)/(1.833-e)]*[(0.833-e)/(1.833-e)]) = K*P/(1 bar)
// let y = [(0+e)/(1.833-e)]/([(1-e)/(1.833-e)]*[(0.833-e)/(1.833-e)])- K*P/(1 bar)
deff('[y]=f(e)','y = [(0+e)/(1.833-e)]/([(1-e)/(1.833-e)]*[(0.833-e)/(1.833-e)])-K*P/(1)');
e_1 = fsolve(0,f);
e_2 = fsolve(0.5,f);

// Here the root 'e_2' is meaningless, Then 
y_ethanol = [(0+e_2)/(1.833-e_2)];
y_ethylene = [(1-e_2)/(1.833-e_2)];
y_water = [(0.833-e_2)/(1.833-e_2)];

printf("Concentration of the ethylene at the equilibrium is %f\n",y_ethylene);
printf(" Concentration of the water at the equilibrium is    %f\n",y_water);
printf(" Concentration of the ethanol at the equilibrium is  %f",y_ethanol);