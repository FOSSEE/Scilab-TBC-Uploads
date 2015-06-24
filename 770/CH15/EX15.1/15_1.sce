clear;
clc;

//Example - 15.1
//Page number - 503
printf("Example - 15.1 and Page number - 503\n\n");

//Given
T = 90+ 273.15;//[K] - Temperature
P = 1;//[atm] - Pressure
x_1 = 0.5748;// Equilibrium composition of liquid phase
y_1 = 0.7725;// Equilibrium composition of vapour phase

// We start with 1 mol of mixture of composition z_1 = 0.6, from marterial balance we get
// (L + V)*z_1 = L*x_1 + V*y_1
// Since total number of moles is 1, we get
// z_1 = L*x_1 + (1-L)*y_1

z_1_1 = 0.6;// - Mole fraction of benzene
L_1 = (z_1_1 - y_1)/(x_1 - y_1);
V_1 = 1 - L_1;

printf(" For z_1 = 0.6\n");
printf(" The moles in the liquid phase is %f mol\n",L_1);
printf(" The moles in the vapour phase is %f mol\n\n",V_1);

z_1_2 = 0.7;// - Mole fraction of benzene
L_2 = (z_1_2 - y_1)/(x_1 - y_1);
V_2 = 1 - L_2;

printf(" For z_1 = 0.7\n");
printf(" The moles in the liquid phase is %f mol\n",L_2);
printf(" The moles in the vapour phase is %f mol\n\n",V_2);


// For z = 0.8
// The feed remains vapour and the liquid is not formed at all as it is outside the two-phase region (x_1 = 0.5748 and y_1 = 0.7725).
printf(" For z_1 = 0.8\n");
printf(" The feed remains vapour and the liquid is not formed at all as it is outside the two-phase region (x_1 = 0.5748 and y_1 = 0.7725)")


