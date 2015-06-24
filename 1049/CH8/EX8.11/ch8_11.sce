clear;
clc;
V_s=450;
R=10;
disp("for 180deg mode");
I_or=sqrt((V_s/(3*R))^2*2/3+(2*V_s/(3*R))^2*1/3);    printf("rms value of load current=%.3f A",I_or);
I_T1=sqrt((1/(2*%pi))*((V_s/(3*R))^2*2*%pi/3+(2*V_s/(3*R))^2*%pi/3));    printf("\nrms value of load current=%.0f A",I_T1);
P=3*I_or^2*R;    printf("\npower delivered to load=%.1f kW",P/1000);

disp("for 120deg mode");
I_or=sqrt((1/(%pi))*((V_s/(2*R))^2*2*%pi/3));    printf("rms value of load current=%.3f A",I_or);
I_T1=sqrt((1/(2*%pi))*((V_s/(2*R))^2*2*%pi/3));    printf("\nrms value of load current=%.2f A",I_T1);
P=3*I_or^2*R;    printf("\npower delivered to load=%.3f kW",P/1000);
