//Example 5.3.3 page 5.8;

clc;
clear;

Ps= 5;
Lcoupling = 3;
Lc= 2;
L_splicing = 50*0.1;
F_atten  = 25;
L_total = Lcoupling+Lc+L_splicing+F_atten;
P_avail = Ps-L_total;
sensitivity = -40;
loss_margin = -sensitivity-(-P_avail);
printf("The loss margin of the system is -%d dBm",loss_margin);
sensitivity_fet = -32;
loss_margin_fet=-sensitivity_fet-(-P_avail);
printf("\n\nThe loss marging for the FET receiver is -%d dBm",loss_margin_fet);
