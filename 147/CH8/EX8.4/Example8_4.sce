//Base current Ibq
close();
clear;
clc;
alpha = 0.98;
Ibq = 30*10^(-6);//A
Beta = alpha/(1-alpha);
Icq = Beta*Ibq;
Ieq = Icq/alpha;
mprintf('Beta = %0.0f\nIcq = %0.2f mA\nIeq = %0.2f mA',Beta,Icq*1000,Ieq*1000);



