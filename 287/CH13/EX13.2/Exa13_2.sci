//Determine received signal power at MS receiver and SNR of received signal

lamda = 0.2;
d = 8000;
Gt = 8;
L0 = 8;
T0 = 1.38e-23;
Bw = 0.2e+6;
T = 1160+290;


Lp = -20*log10(lamda/(4*%pi*d));
Pr = Lp + Gt - L0;
Pn1 = T0*T*Bw;
Pn = 10*log10(Pn1);

SNR = -Pr-Pn;

disp(-Pr, 'Recieved Signal power (in dBW)')
disp(SNR, 'SNR of received signal (in dB)')