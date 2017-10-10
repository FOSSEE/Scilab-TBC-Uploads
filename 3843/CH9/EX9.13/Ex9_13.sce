// Example 9_13
clc;funcprot(0);
// Given data
m=100;// lbm/sec
P_1=5;// psia
P_2=50;// psia
T_1=-50+460;// °R
T_3=2000+460;// °R 
V_1=600;// ft/sec
c_p=0.24// Btu/lbm-°R
k=1.4;// The specific heat ratio

// Calculation
T_2=T_1*(P_2/P_1)^((k-1)/k);// °R 
T_4=T_3-(T_2-T_1);// °R 
P_3=P_2;// psia
P_5=P_1;// psia
P_4=P_3*(T_4/T_3)^(k/(k-1));// psia
T_5=T_4*(P_5/P_4)^((k-1)/k);// °R 
V_5=[2*c_p*778*32.2*(T_4-T_5)]^(1/2);// ft/sec
T=(m/32.2)*(V_5-V_1);// lbf
hp=(T*V_1)/550;// hp
printf("\nThe thrust developed by the engine,T=%4.0f lbf \nThe horse power developed by the engine,hp=%4.0f hp",T,hp);
