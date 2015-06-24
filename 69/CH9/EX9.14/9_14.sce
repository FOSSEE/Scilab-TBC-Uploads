clear; clc; close;

Cs = 2*10^(-6);
Cg = 0.01*10^(-6);
Cc = 0.5*10^(-6);
Rs = 1*10^(3);
Rg = 1*10^(6);
Rsig = 10*10^(3);
Rd = 4.7*10^(3);
Rl = 2.2*10^(3);
Idss = 8*10^(-3);
Vp = -4;
rd = %inf;
Vdd = 20;
Cgd = 2*10^(-12);
Cgs = 4*10^(-12);
Cds = 0.5*10^(-12);
Cwi = 5*10^(-12);
Cwo = 6*10^(-12);


Rthi = Rsig*Rg/(Rsig+Rg);
Av = -3;
Ci = Cwi+Cgs+(1-Av)*Cgd;
fhi = 1/(2*%pi*Rthi*Ci);
Rtho = Rd*Rl/(Rd+Rl);
Co = Cwo+Cds+(1-(1/Av))*Cgd;
fho = 1/(2*%pi*Rtho*Co);

disp(fhi,'fhi = ');
disp(fho,'fho = ');
