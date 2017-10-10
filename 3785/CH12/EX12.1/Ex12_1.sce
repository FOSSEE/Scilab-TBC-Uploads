// Example 12_1
clc;funcprot(0);
// Given data
T=300;// Temperature in K
R_a=287.0;// Gas constant for air in J/kg.K
C_pbyR_a=3.5;
R_h=2077;// Gas constant for helium in J/kg.K
C_pbyR_h=2.5;

// Calculation
// (a)
a=sqrt((C_pbyR_a/(C_pbyR_a-1))*R_a*T);// m/s
printf("\n(a)The speed of sound in air,a=%3.1f m/s",a);
// (b)
a=sqrt((C_pbyR_h/(C_pbyR_h-1))*R_h*T);// m/s
printf("\n(b)The speed of sound in helium,a=%4.0f m/s",a);
