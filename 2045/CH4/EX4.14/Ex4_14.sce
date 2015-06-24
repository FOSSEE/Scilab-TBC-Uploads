//example 14
clear
alpha1=0.99;
ib=25*10^-6;//ampere
icb=200*10^-9;//ampere
beta1=alpha1/(1-alpha1);
ic=beta1*ib+(beta1+1)*icb;
disp("collector current   =   "+string((ic))+"ampere");
ie1=(ic-icb)/alpha1;
disp("emitter current   =   "+string((ie1))+"ampere");
ic=beta1*ib;
disp("collector current with ib   =   "+string((ic))+"ampere");
ie=ic/alpha1;
disp("emitter current   =   "+string((ie))+"ampere");
w=(ie1-ie)/ie1;
disp("error   =   "+string((w)));



