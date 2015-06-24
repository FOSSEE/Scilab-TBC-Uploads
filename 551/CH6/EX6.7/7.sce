clc
m=15; //kg
T1=340; //K
T0=300; //K
cp=4.187; //kJ/kgK
//Work added during churning = Increase in enthalpy of water
W=m*cp*(T1-T0);
ds=cp*log(T1/T0);
AE=m*[cp*(T1-T0)-T0*ds];
AE_loss=W-AE; //Loss in availability
disp("Loss in availability")
disp(AE_loss)
disp("kJ")