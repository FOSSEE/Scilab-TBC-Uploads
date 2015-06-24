//Chapter 8
//Page 210
//Example 8.2
//Thevnin
clear;clc;
//Given
Zth = %i * 0.2;Xg = %i * 1;
Vt = 0.97;
I = 0.8 - %i* 0.2;
Vt_b =1;
//Calculations
//a
S = Vt * I';
Eg = Vt + Xg * I;
printf("\n P = %.3f per unit \n Q = %.3f per unit\n",real(S),imag(S))
printf("\n Eg = %.2f /_%.2f per unit \n",abs(Eg),atan(imag(Eg),real(Eg))*180/%pi)
//b
Eth = Vt - Zth * I;
delta = asin(real(S)  * abs(Zth) / (abs(Eth) * Vt_b));
printf("\n Eth = %.2f /_%.2f per unit \n",abs(Eth),atan(imag(Eth),real(Eth))*180/%pi)
printf("\n Phase angle of Vt = %.2f \n",delta*180/%pi)
ang = (atan(imag(Eth),real(Eth)) + delta)*180/%pi;
Vt_b1 = Vt_b * (cos(ang * %pi / 180)+ %i * sin(ang * %pi / 180));
I_b = (Vt_b1 - Eth) / Zth;
printf("\n I_b = %.2f /_%.2f per unit \n",abs(I_b),atan(imag(I_b),real(I_b))*180/%pi)
Eg_b = Vt_b1 + Xg * I_b;
S_b = Vt_b1 * I_b';
printf("\n P = %.3f per unit \n Q = %.3f per unit\n",real(S_b),imag(S_b))
printf("\n Eg = %.2f /_%.2f per unit \n",abs(Eg_b),atan(imag(Eg_b),real(Eg_b))*180/%pi)
