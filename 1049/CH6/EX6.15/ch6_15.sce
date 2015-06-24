clear;
clc;
V=400;
V_ml=sqrt(2)*V;
v_T=1.4;
disp("for firing angle = 30deg");
a=30;
V_o=3*V_ml/(2*%pi)*cosd(a)-v_T;    printf("avg output voltage=%.3f V",V_o);
disp("for firing angle = 60deg");
a=60;
V_o=3*V_ml/(2*%pi)*cosd(a)-v_T;    printf("avg output voltage=%.2f V",V_o);

I_o=36;
I_TA=I_o/3;    printf("\navg current rating=%.0f A",I_TA);
I_Tr=I_o/sqrt(3);    printf("\nrms current rating=%.3f A",I_Tr);
printf("\nPIV of SCR=%.1f V",V_ml);

P=I_TA*v_T;    printf("\npower dissipated=%.1f W",P);
