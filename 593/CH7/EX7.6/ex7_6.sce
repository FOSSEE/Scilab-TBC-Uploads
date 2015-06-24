clear;
//clc();

// Example 7.6
// Page: 153
printf("Example-7.6  Page no.-153\n\n");

//***Data***//

T = 220+460;//[R] Temperature in rankine
P = 1000;//[psia] Pressure
x_methane = 0.784; // Mol fraction of methane in the given mixture
x_butane = (1-x_methane);// Mol fraction of n-butane in the given mixture

// From the example 7.5, we found directly from the PvT data that for methane
// (f_i/(P*x_i)) = 0.961 = (v_i*Y_i) = phi_cap_i
// So, we can write that
v_i_into_Y_i = 0.961;
phi_cap_i = 0.961;

// From Starling's tables of hydrocarbon properties we read that for pure methane at this T and P,
// (F_i/P) = v_i = phi_i , from which it follows 
v_i = 0.954;
phi_i = v_i;
Y_i = phi_cap_i/v_i;

printf(" The value of v_i is %f\n",v_i);
printf(" The value of Y_i is %f\n",Y_i);
printf(" The value of phi_cap_i is %f",phi_cap_i);
