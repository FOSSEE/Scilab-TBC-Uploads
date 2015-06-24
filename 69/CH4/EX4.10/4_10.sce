clear; clc; close;

R1 = 82*10^(3);
R2 = 22*10^(3);
Re = 1.2*10^(3);
Rc = 5.6*10^(3);
Vcc = 18;
Vbe = 0.7;
Beta = 50;

Rth = R1*R2/(R1+R2);
Eth = R2*Vcc/(R1+R2);
Ib = (Eth - Vbe)/(Rth + (Beta+1)*Re);
Icq = Beta*Ib;
Vceq = Vcc - Icq*(Rc+Re);
disp(Icq,'Collector current(Amperes) in :');
disp(Vceq,'Vce(Volts) is : ');

//approximate analysis
Eth = R2*Vcc/(R1+R2);
Vb = Eth;
Ve = Vb - Vbe;
Icq = Ve/Re;
Vceq = Vcc - Icq*(Rc+Re);
disp('For approximate analysis : ');
disp(Icq,'Value of Icq(Amperes) is : ');
disp(Vceq,'Value of Vceq(Volts) : ');

