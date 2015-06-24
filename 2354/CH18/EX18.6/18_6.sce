//example 18.6
clc; funcprot(0);
// Initialization of Variable
plambda=0.05;
sigma=5.67e-8;
T=300;//K
epsilon=1-plambda;
qrad=epsilon*sigma*T^4-0.226*1353;
disp(qrad,"net radiative heat flux leaving in W/m^2");
clear()
