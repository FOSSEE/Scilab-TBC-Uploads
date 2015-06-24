clear ;
clc;
// Example 9.5
printf('Example 9.5\n\n');
printf('Page No. 265\n\n');

//given
T = 21;// Temperature difference in degree celcius
Deg_d = 2186;// Total degree-days base(15.5 deg C) September_April
T_D = 18;// Design Temperature in degree celcius
T_O = 4;// base offset temperature in degree celcius
T_b = T_D - T_O;// Base temperature in degree celcius

// From Table 9.11 Correction factor for base tempratures other than 15.5 deg C is obtained. So for 14 deg c its 0.82
C = 0.82;// Correction factor
Do = Deg_d * C// Corrected degree-days 

//(a) Original construction
//from example 9.4
Q_d_1 = 133.7*10^3;// Design heat loss in W

H_1 = Q_d_1/T;
//As E = 24 * H * Do - E = Energy consumption in (Wh)
E1 = (24*H_1 *Do)/10^6;// in 10^6 Wh ( from this step 'Do' is mistakely taken as 1972 inplace of 1792 in the solution of the book, so there is deviation in answer)
E_1 = (E1 * 3600)*10^6;// in J
printf('The total energy consumption in original construction is %.0e J \n',E_1)// Deviation in the answer is due to some calculation error as mentioned above

//(b) Improved insulation
//from example 9.4
Q_d_2 = 104.4*10^3;// Design heat loss in W

H_2 = Q_d_2/T;
//As E = 24 * H * Do - E = Energy consumption in (Wh)
E2 = (24*H_2 *Do)/10^6;// in 10^6 Wh ( from this step 'Do' is mistakely taken as 2972 inplace of 2792 in the solution of the book, so there is deviation in answer)
E_2 = (E2 * 3600)*10^6;// in J
printf('The total energy consumption in improved insulation is %.4e J \n',E_2)// Deviation in the answer is due to some calculation error as mentioned above


