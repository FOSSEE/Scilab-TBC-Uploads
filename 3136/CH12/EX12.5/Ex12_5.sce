clear all; clc;

disp("From Eta_hx=(T_dash-T_2)/(T_4-T_dash4),T_4dash=T_2")

disp("we have T_2dash=T_2+Eta_hx*(T_4-T_2)")
T_2=980.2
Eta_hx=0.7
T_4=1374.5
T_2=980.2
T_2dash=T_2+Eta_hx*(T_4-T_2)
printf(" T_2dash=%0.1f R",T_2dash)

Cp=0.339
T_3=2110
T_2dash=1256.2
q_in=Cp*(T_3-T_2dash)
printf("\n q_in %0.1f hp/(lbm/s)",q_in)

Eta_th=99.8/289.4
printf("\n Eta_th=%0.4f=34.6 percent",Eta_th)//in the book the value of Eta_th is rounded off to 34.6 and hence the same is done here.














































