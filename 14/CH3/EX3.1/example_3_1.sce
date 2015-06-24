//Chapter 3
//Example 3.1
//Resistance
//Page 42
clear;clc;

//Given Values
R_dc = 0.01558; //in ohm per 1000 ft at 20 degree Celsius
R_ac = 0.0956; //in ohm per mi at 50 degree Celsius
A = 1113000; //in cmil
l = 1000;//in ft
p = 17; // $p$(rho) = 2.83e-8 ohm.m = 17 ohm.cmil per ft

//Verification of dc resistance
R_0_1 = p*l*1.02/A; //1.02 is to account for 2\% increase in spiraling
printf("\n\n The dc resistance at 20 degree Celsius = %f ohm per 1000 ft\n\n",R_0_1)

T = 228;//in degree Celsius
t1  = 50;//in degree Celsius
t2 = 20;//in degree Celsius

//to obtain dc resistance at 50 degree celsius
R0 = R_0_1 * (T + t1)/(T + t2);

printf("\n\n The dc resistance at 50 degree Celsius = %f ohm per 1000 ft \n\n",R0)

R = R_ac / 5.280e3; //to convert ohm per mi to ohm per ft,ac resistance
R_0 = R0 / 1000; //to convert ohm per 1000 ft to ohm per ft,dc resistance

// to calculate ratio of ac to dc resistance
printf("\n\n Ratio of ac to dc resistance = %.3f  \n\n",R / R_0)
printf("\n\n Skin effect causes a %.1f increase in resistance.\n\n",((R/R_0)-1)*100)
