// Exa 9.21
clc;
clear;
close;
format('v',8)
// Given data
VA = 400*10^3;// in Mean
Eta_fl = 98.77/100;// in %
phi1= acosd(0.8);// in °
phi2= acosd(1);// in °
Eta_hl = 99.13/100;// in %
n = 1/2;
//For full load,  Eta_f1 = ((VA*cosd(phi1))/( VA*cosd(phi1) + Pi + Pcu_f1 )) or Pi+Pcu_f1 = VA*cosd(phi1)*(1-Eta_fl)/(Eta_f1)                   (i)
//For half load,  Eta_hl = n*VA*cosd(phi2)/(n*VA*cosd(phi2)+Pi+n^2*Pcu_f1) or Pi+n^2*Pcu_f1 = n*VA*cosd(phi2)*( 1-Eta_hl)/Eta_hl    (ii)
// From eq(i) and (ii)
Pcu_fl=(n*VA*cosd(phi2)*( 1-Eta_hl)/Eta_hl-VA*cosd(phi1)*(1-Eta_fl)/(Eta_fl))/(n^2-1);// in W
Pi=VA*cosd(phi1)*(1-Eta_fl)/(Eta_fl)-Pcu_fl;// in W
disp(Pi,"The iron loss on full load and half load remain same in W which are : ")
disp(Pcu_fl,"The copper loss on full load in W is : ")
// The copper loss on half load 
C_loss_half_load=n^2*Pcu_fl;// in W 
disp(C_loss_half_load,"The copper loss on half load in W is : ")


