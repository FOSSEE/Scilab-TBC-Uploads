clear;
clc;

// Example: 1.3
// Page: 5

// Solution

printf("Example: 1.3 - Page: 5\n\n");

//*****Data*****//
r_Moon = 0.3;// [km]
r_Earth = 1;// [km]
m2 = 1;// [mass of body, kg]
mMoon_By_mEarth = 0.013;// [kg/kg]
//***************//

// According to the Newton's universal law of gravitation:
Fe_By_Fm = (1/mMoon_By_mEarth)*(r_Moon/r_Earth)^2;
printf("Mass of 1 kg will weigh %.2f kg on moon\n",Fe_By_Fm);