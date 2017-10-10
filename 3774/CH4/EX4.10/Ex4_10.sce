// exa 4.10 Pg 116
clc;clear;close;

// Given Data
Sut=600;//MPa
Se=280;//MPa
sigma_x_min=50;// MPa
sigma_x_max=100;// MPa
sigma_y_min=20;// MPa
sigma_y_max=70;// MPa

sigma_xm=(sigma_x_max+sigma_x_min)/2;// MPa
sigma_xa=(sigma_x_max-sigma_x_min)/2;// MPa
sigma_ym=(sigma_y_max+sigma_y_min)/2;// MPa
sigma_ya=(sigma_y_max-sigma_y_min)/2;// MPa

// distortion energy theory - 
sigma_m=sqrt(sigma_xm**2+sigma_ym**2-sigma_xm*sigma_ym);// MPa
sigma_a=sqrt(sigma_xa**2+sigma_ya**2-sigma_xa*sigma_ya);// MPa
theta=atand(sigma_a/sigma_m);// degree
// Sm/Sut+Sa/Se=1 where Sa=Sm*tan(theta)
Sm=1/(1/Sut+tand(theta)/Se);// MPa
Sa=tand(theta)*Sm;// MPa
n=Sa/sigma_a;// factor of safety

printf('\n factor of safety, n = %.2f',n)
