//Chapter 8
//Example 8_1
//page 171

clear;clc;

v=33*1e3;
k=0.11;
ins=3;

v_string=v/sqrt(3);
v1=v_string/(3+4*k+k^2);
v2=v1*(1+k);
v3=v1*(1+3*k+k^2);
n=v_string*100/ins/v3;

printf("(i)Voltage across top unit = %.2f kV \n\n", v1/1000);
printf("   Voltage across middle unit = %.2f kV \n\n", v2/1000);
printf("   Voltage across bottom unit = %.2f kV \n\n", v3/1000);
printf("(ii) String efficiency = %.2f %% \n\n", n);

