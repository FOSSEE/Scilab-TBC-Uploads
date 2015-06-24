clear;
clc;

// Example: 1.13
// Page: 24

printf("Example: 1.13 - Page: 24\n\n");

// Solution

//*****Data*****//
delta_T_C = 30;// [OC]
//*************//

// The relation between the Kelvin temperature scale and the Celsius temperature scale:
// T(K) = T(OC) + 273.15
// Here, the temperature rise is to be expressed in terms of K, but the difference in temperature will be the same in the Kelvin and Celsius scales of temperature:
delta_T_K = delta_T_C;// [K]
printf("The rise in temperature in the Kelvin scale is %d K\n",delta_T_K);
// The emperical relationship between the Rankine and Kelvin scales is given by:
delta_T_R = 1.8*delta_T_K;// [R]
printf("The rise in temperature in the Rankine scale is %d R\n",delta_T_R);
delta_T_F = delta_T_R;// [OF]
printf("The rise in temperature in the Fahrenheit scale is %d OF\n",delta_T_F);