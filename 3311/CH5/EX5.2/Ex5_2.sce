// chapter 5
// example 5.2
// Fig. E5.2
// Compute the drain current and differnces in current sharing
// page-174-175
clear;
clc;
// given
I_T=30; // in A (total current)
V_DS1=4; // in V (drain to source voltage of MOSFET 1)
V_DS2=4.5; // in V (drain to source voltage of MOSFET 2)
R_S1_a=0.4, R_S2_a=0.3; // in ohm (current sharing series resistance for part-a)
R_S1_b=0.7, R_S2_b=0.7; // in ohm (current sharing series resistance for part-b)
// calculate
// Since I_T=I_D1+I_D2 and V_DS1+ID1*R_S1=V_DS2+ID2*R_S2, simplifying both equations for I_D1, we get
// I_D1=(V_DS2-V_DS1+R_S2*I_T)/(R_S1+R_S2)
I_D1_a=(V_DS2-V_DS1+R_S2_a*I_T)/(R_S1_a+R_S2_a); // calculation of drain current of MOSFET 1 for part-a
I_D1_a_percent=I_D1_a*100/I_T; // equivalent value in terms of percentage of total current
I_D2_a=I_T-I_D1_a; // calculation of drain current of MOSFET 2 for part-a
I_D2_a_percent=I_D2_a*100/I_T; // equivalent value in terms of percentage of total current
dI_a=abs(I_D2_a-I_D1_a); // calculation of difference in current for part-a
dI_a_percent=abs(I_D2_a_percent-I_D1_a_percent); // equivalent value in terms of percentage of total current
printf("\npart-a\n");
printf("\nThe drain current of MOSFET 1 is \t I_D1=%.2f A   or   %.2f %%",I_D1_a,I_D1_a_percent);
printf("\nThe drain current of MOSFET 2 is \t I_D2=%.2f A   or   %.2f %%",I_D2_a,I_D2_a_percent);
printf("\n\nThe difference in current sharing is \t%.2f A   or   %.2f %%",dI_a,dI_a_percent);
I_D1_b=(V_DS2-V_DS1+R_S2_b*I_T)/(R_S1_b+R_S2_b); // calculation of drain current of MOSFET 1 for part-a
I_D1_b_percent=I_D1_b*100/I_T; // equivalent value in terms of percentage of total current
I_D2_b=I_T-I_D1_b; // calculation of drain current of MOSFET 2 for part-a
I_D2_b_percent=I_D2_b*100/I_T; // equivalent value in terms of percentage of total current
dI_b=abs(I_D2_b-I_D1_b); // calculation of difference in current for part-a
dI_b_percent=abs(I_D2_b_percent-I_D1_b_percent); // equivalent value in terms of percentage of total current
printf("\n\npart-b\n");
printf("\nThe drain current of MOSFET 1 is \t I_D1=%.2f A   or   %.1f %%",I_D1_b,I_D1_b_percent);
printf("\nThe drain current of MOSFET 2 is \t I_D2=%.2f A   or   %.1f %%",I_D2_b,I_D2_b_percent);
printf("\n\nThe difference in current sharing is \t%.2f A   or   %.1f %%",dI_b,dI_b_percent);
// Note: the answers for some of the quantity may vary slightly due to precise calculation