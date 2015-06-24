clear ;
clc;
// Example 7.5
printf('Example 7.5\n\n');
printf('Page No. 205\n\n');

//The temperature difference is not given the question.
//Refer Table 7.1
T1 = 1000;// Furnace operating temperature in degree celcius
//T2 is  back calculated by the first condition given in table 7.1 and applying Fourier,s law of condition
T2 = 997.9545;// in degree Celcius()
dT = T1 - T2;// in degree celcius
t = 120;// Continuous cycle time in h
K1 = 44;// Thermal conductivity (W/m-K)
K2 = 11;// Thermal conductivity (W/m-K)
K3 = 4;// Thermal conductivity (W/m-K)
x1 = 250*10^-3;// mm converted into m
x2 = 50*10^-3;// mm converted into m
dT = T1 - T2;// in K

//By Fourier,s law of heat conduction- Q = (dT *K)/x in W/sq.m

//For 250 mm firebrick
Q1 = (dT *K1)/x1;// im W/sq.m
printf('Energy losses by 250 mm firebrick is %.0f W/sq.m \n',Q1)

//For 250 mm hot-face insulation
Q2 = (dT *K2)/x1;// im W/sq.m
printf('Energy losses by 250 mm hot-face insulation is %.0f W/sq.m \n',Q2) //Deviation in answer is due to assumption of T2 as its not mentioned in the question

//For 250 mm hot-face insulation backed by 50 mm insulation
//As the resistances are in series - R = (x1/K1)+ (x2/K2) and Q = dt/R in W/sq.m
R = (x1/K2)+ (x2/K3);// in ohm
Q3 = dT/R;// in W/sq.m
printf('Energy losses by 250 mm hot-face insulation backed by 50 mm insulation is %.0f W/sq.m \n\n',Q3) //Deviation in answer is due to assumption of T2 as its not mentioned in the question


