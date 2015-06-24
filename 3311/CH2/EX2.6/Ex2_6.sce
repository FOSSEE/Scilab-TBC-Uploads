// chapter 2
// example 2.6
// Fig. E2.6
// Calculate the mean power loss
// page-31-32
clear;
clc;
// given
// V_T=1.0+(1.1*I/60)  (from graph)
I_a=23; // in A (steady current)\
I_b=18; // in A (Half-sine wave)
I_c=39.6; // in A (level current for half cycle)
I_d=48.5; // in A (level current for one-third cycle)
// calculate
V_T_a=1.0+(1.1*I_a/60); // calculation of ON state voltage corresponding to  I_a
P_a=V_T_a*I_a; // calculation of power loss corresponding to I_a
printf("\nThe Power loss is \t%.1f W\n",P_a);
I_m_b=I_b*%pi; // maximum value of sine wave current
P_b=(1/(2*%pi))*(integrate('((1+(1.1*I_m_b*sin(x)/60))*I_m_b*sin(x))','x',0,%pi)); // calculation of power loss corresponding to I_b
printf("\nThe Power loss is \t%.2f W\n",P_b);
V_T_c=1.0+(1.1*I_c/60); // calculation of ON state voltage corresponding to  I_c
P_c=V_T_c*I_c/2; // calculation of power loss corresponding to I_c
printf("\nThe Power loss is \t%.1f W\n",P_c);
V_T_d=1.0+(1.1*I_d/60); // calculation of ON state voltage corresponding to  I_d
P_d=V_T_d*I_d/3; // calculation of power loss corresponding to I_d
printf("\nThe Power loss is \t%.1f W\n",P_d); 
// Note: the answer of part (b) varies slightly due to precise calculation and round off