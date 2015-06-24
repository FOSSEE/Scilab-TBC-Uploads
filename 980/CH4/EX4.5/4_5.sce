clc;
clear;
format('e',11);
//case1
F=(1*10^-9)*(1*10^-9)/(4*3.14*8.85*10^-12*0.01^2);   //according to coulomb's law
disp(F,"force felt by either of the charges at a distance of 1cm(in newton)=");
//case2
disp("At a distance of 10cm the force will be 100 times weeker,due to the inverse square law.");
F1=F/100;
disp(F1,"force at a distance of 10cm(in newton)=");
