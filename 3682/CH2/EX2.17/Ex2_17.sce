// Exa 2.17

clc;
clear;

// Given data

// Fig. 2.33- Internal circuit of Motorola MC 1530
B = 100;
Vbe = 0.7; Vd = 0.7; Vcc = 6; Vee = 6; Vo = 5; Vt= 0.026; // Volts
// Vt = volt equivalent of temperasture at room temperature
R1 = 2.2; R2 = 7.75; R3 = 7.75; R4 = 1.5; R5 = 3.2; R6 = 1.5; R7 = 3;
R8 = 3.4; R9 = 6; R10 = 30; R11 = 5; // All in kΩ

// Solution

printf(' The d.c. analysis is performed by assuming that both the inverting and non-inverting terminals are at ground potential.');

Vbn1 = (-Vee+Vd+Vd)*R5/(R4+R5);
printf('\n  The voltage Vbn1 at base of transistor Q1 w.r.t ground N  = %.2f V. \n',Vbn1);
I1 = (Vee + Vbn1 - Vbe)/R1;
printf('\n The current through emitter of Q1 i.e I1 = %.3f mA. \n',I1);
printf(' If the base current of Q1 is neglected, then Iq(current through collector of Q1) = I1 = %.3f mA. \n',I1);

printf('\n under dc conditions, half of the Iq flows through each transistors Q2 and Q3.Therefore Ic2 = Ic3 = %.3f mA. \n',(I1/2));
Vc2 = Vcc - R2*(I1/2);
printf(' The voltage at collector of Q2 and Q3 = Vc2 = Vc2 = %.2f V. \n',Vc2);
printf('\n By looking at the Internal circuit, the voltages at the base of Q4 and  Q5 i.e Vb4 = Vb5 = %.2f V. \n',Vc2);
Ve4 = Vc2 - Vbe;
printf(' The dc voltage at the emitter of Q4 = Ve4 = %.2f V.\n',Ve4);
I6 = Ve4/R6;
printf('\n The current through R6 = %.3f mA. \n',I6 );
printf(' This current divides equally in transistors Q4 and Q5 i.e Ic4 = Ic5 = %.3f mA. \n',(I6/2));
Vc5 = Vcc-(I6/2)*R7;
Ve6 = Vc5-Vbe;
printf('\n The collector voltage of Q5i.e Vc5 and emitter voltage of Q6 i.e are %.2f V and %.2f V respectively. \n',Vc5,Ve6);
I8 = (Vee-Vd)/R8;
printf(' Transistors Q7 along with diode D3 forms a current mirror of the type shown in fig. 2.15. Hence, Ic7 = I8 = %.2f mA. \n',I8);

Vb8 = Vbe + Vd - Vee;
printf('\n The voltage at the base of Q8 i.e Vb8 = %.2f V. \n',Vb8);
I9 = (Ve6-Vb8)/R9;
I10 = I8-I9;
printf(' The currents along resistors R9 and R10 are %.2f mA and %.2f mA respectively. \n',I9,I10 );

Vo_dc = I10*R10 + Vb8;
printf(' The voltage at output terminal = %.2f V (approximately 0)  as expected. \n',Vo_dc);

printf('\n\n');
printf('////////////////////////////////FOR over all voltage gain/////////////////////\n\n');
h_fe = 100;
printf(' we first calculate the voltage gain of the differential amplifier stages.\n');
// since Ic2 = Ic3 = Ic4 = Ic5 = approx 0.50 mA
Ic = 0.5; // in mA
h_ie = h_fe*Vt/Ic;

RL2 = (1/R2 + 1/h_ie)^-1;
RL3 = RL2;

Av1 = h_fe*RL2/h_ie;
printf(' The output of the first stage is double ended, its differential gain is given as %d. \n',Av1);

Av2 = -(1/2)*(h_fe*R7/h_ie);
printf(' The output of the second stage is single ended, so its differential gain is %.1f. \n',Av2);

printf(' The third stage is emitter follower, so, Av3 = (approximately)1. \n');
Av3 = 1;
Av4 =- R10/R9;
printf(' The last output stage uses voltage shunt feedback network R9-R10, \n So, Av4 = (approimately) %d. \n',Av4);

Av = Av1 * Av2 * Av3 * Av4;
printf(' \n\n Hence the over all op-amp gain is, Av = %d. \n ' ,Av);
