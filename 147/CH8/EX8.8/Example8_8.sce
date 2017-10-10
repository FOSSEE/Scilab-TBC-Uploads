close();
clear;
clc;
Ibq = 30*10^(-6);//A
Vceq = 8;//V
Vcc = 14;//V
//From graph
Icq = 2.7*10^(-3);//A
Rc = Vcc/(6.25*10^(-3));
Ieq = Icq+Ibq;
Beta = Icq/Ibq;
mprintf('Icq = %0.1f mA\nRc = %0.2f k ohm\nIeq = %0.2f mA\nBeta = %0.0f',Icq*1000,Rc/1000,Ieq*1000,Beta);