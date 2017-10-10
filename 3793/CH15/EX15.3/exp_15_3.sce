clear;
clc;
E_ll=110;
X=10;
V_o=(3*sqrt(2)*E_ll)/%pi;
U1=15;
V_d1=(V_o*(cosd(X)+cosd(U1+X)))/2;
printf("\nthe dc output voltage when (U1=15) = %.3f kV",V_d1);

U2=20;
V_d2=(V_o*(cosd(X)+cosd(U2+X)))/2;
printf("\nthe dc output voltage when (U2=20) = %.3f kV",V_d2);
