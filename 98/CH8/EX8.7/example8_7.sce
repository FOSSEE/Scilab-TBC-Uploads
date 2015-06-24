//Chapter 8
//Example 8_7
//Page 175

clear;clc;

ins=5;
vl=100;
k=0.1;

v1=1;
v2=(1+k);
v3=(1+3*k+k^2);
v4=(1+6*k+5*k^2);
v5=(2+1*k+6*k^2);

v=v1+v2+v3+v4+v5;

pv1=v1/v*100;
pv2=v2/v*100;
pv3=v3/v*100;
pv4=v4/v*100;
pv5=v5/v*100;

v_string=vl/sqrt(3);
v_1=pv1/100*v_string;
v_2=pv2/100*v_string;
v_3=pv3/100*v_string;
v_4=pv4/100*v_string;
v_5=pv5/100*v_string;

n=v_string/ins/v_5;

printf("Voltage across string = %.2f kV \n\n", v_string);
printf("(i) Voltage across top insulator = %.2f kV \n", v_1);
printf("    Voltage across second unit = %.2f V \n", v_2);
printf("    Voltage across third unit = %.2f V \n", v_3);
printf("    Voltage across fourth unit = %.2f V \n", v_4);
printf("    Voltage across fifth unit = %.2f V \n\n", v_5);

printf("(ii) String efficiency = %.2f %% \n\n", n*100);
