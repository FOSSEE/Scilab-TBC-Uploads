// Example 34_7
clc;funcprot(0);
//Given data
L_p=10;// MW
// I=5*10^6(18+12L+0.5L^2)
L_1=5;// MW
L_2=7;// MW

// Calculation
//(a)
// n=(L/I)=(1/(5*10^6((18/L)+12+0.5L)));
// The efficiency will be maximum when ((18/L)+12+0.5L)),differentiating we get
L_m=sqrt((-18)/(-0.5));// MW
L=L_m*10^3*3600;// kJ/hr
I_6=5*10^6*(18+(12*L_m)+(0.5*L_m^2));// kJ/hr
n_max=(L/I_6)*100;// Maximum efficiency in %
printf('\n(a)The load at which the efficiency of the plant will be maximum=%0.0f MW \n   The maximum efficiency=%0.0f percentage',L_m,n_max);
//(b)
I_5=5*10^6*(18+(12*L_1)+(0.5*L_1^2));// kJ/hr
I_7=5*10^6*(18+(12*L_2)+(0.5*L_2^2));// kJ/hr
dI=I_7-I_5;// Increase in output to the plant per hour in  kJ/hr
L=(L_1+L_2)/2;// MW
IR=5*10^6*(12+L);// kJ/hr
Ti=IR*(L_2-L_1);// Total increase in input in kJ/hr
printf('\n(b)Total increase in input=%0.2e kJ/hr',Ti);

