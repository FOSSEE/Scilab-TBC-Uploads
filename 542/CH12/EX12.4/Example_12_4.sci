clear;
clc;
printf("\n Example 12.4");
Gm = 0.015;
KGa = 0.04;
top = 0.0003;
Y1 = 0.03;
Ye = 0.026;
bottom = (Y1-Ye);
log_mean_driving_force = (bottom-top)/log(bottom/top);
Z = poly([0],'Z');
Z1 = roots(Gm*(Y1-top)-KGa*log_mean_driving_force*Z);
printf("\n     Z =%.2fm",Z1);
HoG = Gm/KGa;
printf("\n  Height of transfer unit HoG = %.3fm",HoG);
printf("\n Number of transfer units NoG = %f",ceil(7.79/0.375));














 