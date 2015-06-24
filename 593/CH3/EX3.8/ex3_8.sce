clear;
//clc();

// Example 3.8
// Page: 61
printf("Example-3.8  Page no.-61\n\n");


//***Data***//

P_1 = 5;//[atm]
y_n = 0.79;// Mole fraction of nitrogen in atmosphere
P_2 = 1.0;//[atm]
M = 55;//[kg] Mass of the diver
x_w = 0.75;// Fraction of water in human body
T = 37;//[C] Body temperature of the diver

// At 37 deg temperature, the Henry's constant for N2 from the table A.3 ( page 419 ) by the linear interpolation is 
H_n = 10.05*10^(4);//[atm]

// Now, moles of nitrogen rejected will be
// M_rej = (moles of body fluid)*( x_N2,5 atm - x_N2,1 atm)
// So
M_rej = (M*1000*x_w/18)*( P_1*y_n/H_n - P_2*y_n/H_n);//[mol]
// At STP the volume of the rejected nitrogen will be
V_n = M_rej*24.2;//[L]

printf(" Amount of rejected nitrogen will be %0.2f Litre",V_n);