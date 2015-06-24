clear;
clc;
disp("when load R=2 ohm");
V_01=230;
R=2;
I_01=V_01/R;
I_m=I_01*sqrt(2);
I_T1=I_m/2;    printf("rms value of thyristor current=%.2f A",I_T1);
I_D1=0;    printf("\nrms value of diode current=%.0f A",I_D1);

disp("when load R=2ohm, X_L=8ohm and X_C=6ohm");
X_L=8;
X_C=6;
I_01=V_01/sqrt(R^2+(X_L-X_C)^2);
phi1=atand((X_L-X_C)/R);
I_T1=I_T1*sqrt(2)*.47675;    printf("rms value of thyristor current=%.3f A",I_T1);
I_D1=.1507025*I_m/sqrt(2);    printf("\nrms value of diode current=%.3f A",I_D1);