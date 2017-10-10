close();
clear;
clc;
Beta = 100;
Ibq = 20*10^(-6);
Vcc = 15;//V
Rc = 3000;//ohm
Icbo = 0;
alpha = Beta/(Beta+1);
Icq = Beta*Ibq;
Ieq = Icq/alpha;
Vceq = Vcc-Icq*Rc;
//Part (c)
Rc = 6000;
Vceq_c = Vcc-Icq*Rc;
mprintf('(a):Ieq = %0.2f mA\n(b):Vceq = %0.0f V\n(c):Vceq = %0.0f V',Ieq*1000,Vceq,Vceq_c);