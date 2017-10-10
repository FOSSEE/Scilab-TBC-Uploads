// Example 14_10
clc;funcprot(0);
// Given data
PR=2.00;// The pressure ratio
T_1=70+460;// R
T_3=80.0+459.67;// R
n_s_e=65/100;// The isentropic efficiency of the expander
n_s_c=65/100;// The isentropic efficiency of the compressor
k=1.40;// The specific heat ratio

// Calculation
// (a)
COP_rBa=(((PR)^((k-1)/k))-1)^-1;// The COP for a reversed Brayton R/AC ASC
T_4s=T_3/((PR)^((k-1)/k));// R
T_4s=T_4s-459.67;// °F
// (b)
T_4=T_3-((T_3-(T_4s+459.67))*(n_s_e));// R
T_4=T_4-459.67;// °F
T_2s=(T_1*T_3)/(T_4s+459.67);// R
COP_rB=(T_1-(T_4+459.67))/(((T_2s-T_1)/(n_s_c))-((T_3-(T_4s+459.67))*(n_s_e)));// The COP for a reversed Brayton cycle R/AC
printf("\n(a)The COP for a reversed Brayton R/AC ASC,COP=%1.2f \n(b)The COP for a reversed Brayton cycle R/AC,COP=%0.3f",COP_rBa,COP_rB);
// The answer provided in the textbook is wrong
