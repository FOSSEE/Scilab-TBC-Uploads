clear; clc; close;

Vcc = 12;
Vbe = 0.7;
Vce = 4.23;  
Rb = 240*10^(3);
Rc = 2.2*10^(3);
Beta = 75;
Ic = 3.53*10^(-3);

Ibq = (Vcc-Vbe)/Rb;
Icq = Beta*Ibq;
Vceq = Vcc-Ic*Rc;
Vb = Vbe;
Vc = Vce;
Vbc = Vb-Vc;

disp(Ibq,'Ibq(Amperes) is :');
disp(Icq,'Icq(Amperes) is :');
disp(Vceq,'Vceq(volts) is :');
disp(Vb,'Vb(volts) is :');
disp(Vc,'Vc(volts) is :');
disp(Vbc,'Vbc(volts) is :');
