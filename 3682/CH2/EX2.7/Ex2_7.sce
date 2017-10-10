// Exa 2.7

clc;
clear;

// Given data

// Fig. 2.11(a) shows the basic differential amplifier
Rc = 2*10^3; // Ω
Re = 4.3*10^3; // Ω
Vcc = 5 ; // Vcc = |VEE|
Bo = 200;
Vbe = 0.7; // Volts
Vt=25*10^-3; // Volts

// Solution

printf(' For V1 = V2 = 0, applying KVL for the base emitter loop, we may write,');
printf('\n  Vbe+2*(1+Bo)*Ibq*Re-Vee = 0.\n  From this we get Ibq as ');
Ibq = (Vcc-Vbe)/(2*(1+Bo)*Re);
printf(' %.2f μA. \n ',Ibq*10^6);
Icq = Bo*Ibq;
printf(' The value of Icq = %.3f mA. \n ',Icq*10^3);
Vo1 = Vcc - Rc*Icq; 
printf(' The value of Vo1 = Vo2(due to symmetry) = %.3f V. \n ',Vo1);
Vceq = Vo1-(-Vbe);
printf(' The value of Vceq = %.3f V. \n ',Vceq);
gm = Icq/Vt;
r_pi = Bo/gm;
// using wq. 2.50 ADM = -gm*Rc;
ADM = -gm*Rc;
// using equation 2.53(a) Acm can be given as
ACM = (-Bo*Rc)/(r_pi+2*(1+Bo)*Re);

CMRR = ADM/ACM;
CMRR_db = 10*log(CMRR);
printf(' The remaining values are as follows: \n  ADM = %.2f. \n  ACM = %.2f. \n  CMRR = %.1f = %.1f dB.\n',ADM,ACM,CMRR,CMRR_db);
