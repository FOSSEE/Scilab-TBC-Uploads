//Chapter 8
//Example 8_10 
//Page 177

clear;clc;

shunt_cap=0.15;
line_cap=0.1;
n=3;

v1=13.25/40.55;
v2=12.5*v1/13.25;
v3=14.8*v1/13.25;

pv1=v1*100;
pv2=v2*100;
pv3=v3*100;
eff=1/n/v3*100;

printf("V1 = %.3f V \n", v1);
printf("V2 = %.3f V \n", v2);
printf("V3 = %.3f V \n\n", v3);

printf("(i) Voltage expressed as a percentage of V : \n");
printf("    Top unit = %.2f %% \n", pv1);
printf("    Middle unit = %.2f %% \n", pv2);
printf("    Third unit = %.2f %% \n\n", pv3);

printf("(ii) String efficiency = %.2f %% \n\n", eff);







