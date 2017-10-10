// Example 12_10
clc;funcprot(0);
// Given data
u_0=100;// The average speed in m/s
r=1.31;// The specific heat ratio 
a_0=446.1;// m/s

// Calculation
// (a)
u_out_1=((2/(r+1))*a_0)+(((r-1)/(r+1))*u_0);// The outflow speed of section 1 in m/s
mfr_ratio_1=(u_out_1/a_0)^(2/(r-1))*(u_out_1/u_0);// The mass flow rate ratio of section 1
u_out_2=-(((2/(r+1))*a_0)-(((r-1)/(r+1))*u_0));// The outflow speed of section 2 in m/s
mfr_ratio_2=(-u_out_2/a_0)^(2/(r-1))*(-u_out_2/u_0);// The mass flow rate ratio of section 2
printf("\n(a)The outflow speed of section 1,u_out=%3.1f m/s \n   The outflow speed of section 1,u_out=%3.1f m/s \n(b)The mass flow rate ratio of section 1 is %1.3f \n   The mass flow rate ratio of section 2 is %1.3f",u_out_1,u_out_2,mfr_ratio_1,mfr_ratio_2);
