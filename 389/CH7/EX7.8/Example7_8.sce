clear;
clc;

// Illustration 7.8
// Page: 237

printf('Illustration 7.8 - Page: 237\n\n');

// solution

//****Data****//
Y_prime1 = 0.030;// [kg water/kg dry air]
Temp1 = 83;// [OC]
//*******//

// From the psychrometric chart, the condition at 90 OC
Temp2 = 41.5;// [OC]
Y_prime2 = 0.0485;// [kg water/kg dry air]
printf("The Outlet Air condition are:\n");
printf("Temp. =  %f OC\n",Temp2);
printf("Absolute Humidity =  %f kg water/kg dry air\n",Y_prime2);