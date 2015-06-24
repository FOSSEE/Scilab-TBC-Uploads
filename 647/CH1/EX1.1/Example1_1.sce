clear;
clc;

// Example: 1.1
// Page: 4

// Solution

printf("Example: 1.1 - Page: 4\n\n");

//*****Data*****//
g_Earth = 9.83;// [m/square s]
F_Earth = 800;// [N]
g_Moon = 3.2;// [m/square s]
//************//

// From the expression of force, the force on the man on the Eath's surface is given by:
// F = m*g_Earth
m = F_Earth/g_Earth;// [kg]

// On the moon, the weight of the mass is equal to the force acting on the mass on the moon and is given by
F_Moon = m*g_Moon;// [N]

printf("Weight of the man on the moon is %f N\n",F_Moon);