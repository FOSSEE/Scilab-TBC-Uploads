// Exa 9.10
clc;
clear;
close;
format('v',9)
// Given data
phi= acosd(1);// in °
Pout = 500;// in kW
Pout = Pout*10^3;// in W
Eta = 90;// in %
n=1/2;
// For full load, Eta= Pout*100/(Pout+Pi+Pcu_f1) or Pi+Pcu_f1= (Pout*100-Eta*Pout)/Eta                                       (i)
// For half load, Eta= n*Pout*100/(n*Pout+Pi+n^2*Pcu_f1) or Pi+n^2*Pcu_f1= (n*Pout*100-n*Eta*Pout)/Eta    (ii)
// From eq(i) and (ii)
Pcu_fl= [(n*Pout*100-n*Eta*Pout)/Eta-(Pout*100-Eta*Pout)/Eta]/(n^2-1)
Pi=(Pout*100-Eta*Pout)/Eta-Pcu_fl
disp(Pi,"The iron loss in W is : ")
disp(Pcu_fl,"The full load copper loss in watt")
