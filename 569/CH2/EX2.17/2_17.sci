//calculating the sensitivity and deflection factor of wheatstone bridge
clc;
Mo=3;
Mi=7;
Sen=Mo/Mi;
disp(Sen,'sensitivity(mm per ohm) =');
Df=Mi/Mo;
disp(Df,'deflection factor( ohm per mm) =');
