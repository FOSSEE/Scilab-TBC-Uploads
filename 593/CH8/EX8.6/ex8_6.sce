clear;
//clc();

// Example 8.6
// Page: 178
printf("Example-8.6  Page no.-178\n\n");

//***Data***//

P = 1.00;//[atm] assumed total vapor pressure
// In psia unit 
P1 = 14.7;//[psia]
// From the figure 8.12d ( page 176 ) in book, the mole fractions of water in all the three phases and temperature are known and given as
x_1_water = 0.65;
x_1_butanol = (1-x_1_water);
x_2_water = 0.98;
x_2_butanol = (1-x_2_water);
y_water = 0.73;
y_butanol = (1-y_water);
T = 92;//[C]

// At this temperature we have to estimate the vapor pressure of pure water and n-butanol with the help of Antoine equation 
// log10(p) = A - B/(T+C)
// From Table A.2( page 418), the Antoine equation constants for water are
A_w = 7.94917;
B_w = 1657.462;
C_w = 227.02;

// and that for n-butanol are
A_b = 7.838;
B_b = 1558.190;
C_b = 196.881;

// Thus vapor pressure of water and n-butanol are respectively
p_water = (14.7/760)*10^(A_w - B_w/(T+C_w));
p_butanol = (14.7/760)*10^(A_b - B_b/(T+C_b));

// fugacity of the water and n-butanol are given as
// f_i = (y*Y*P)_i
// Where Y is the gas phase activity coefficient and its value is 1.00 in ideal gas mixture, so
f_water = (y_water*P);
f_butanol = (y_butanol*P);
// The fugacity will be same in both the phase 1 and 2

// Now, liquid-phase activity coefficients are given by
// Y_i = (y_i*P)/(x_i*p_i)
// so,
Y_water_1 = (y_water*P1)/(x_1_water*p_water);
Y_butanol_1 = (y_butanol*P1)/(x_1_butanol*p_butanol);

// For phase 2
Y_water_2 = (y_water*P1)/(x_2_water*p_water);
Y_butanol_2 = (y_butanol*P1)/(x_2_butanol*p_butanol);

printf(" Four activity coefficients and fufacities are shown in the following table:\n\n");
printf("\t Phase \t x_water \t f_water(atm) \t Y_water \t x_butanol \t f_butanol(atm) \t Y_butanol\n\n");
printf(" \t   1 \t %f \t %f \t %f \t %f \t %f \t\t %f \n",x_1_water,f_water,Y_water_1,x_1_butanol,f_butanol,Y_butanol_1);
printf(" \t   2 \t %f \t %f \t %0.2f \t\t %f \t %f \t\t %f ",x_2_water,f_water,Y_water_2,x_2_butanol,f_butanol,Y_butanol_2);
