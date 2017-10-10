// Exa 2.18

clc;
clear;

// Given data

// op-amp circuit as shown in Fig. 2.35
h_fe = 100; 
Vbe = 0.7; Vcc = 15; Vee = 15; Vt = 0.025; // Volts
// Vt = volt equivalent at room temperature
R1 = 20; R2 = 20; R3 = 28.6; R6 = 3; R8 = 2.3;
R9 = 3; Ra = 15.7; // All in k Ω

// Solution

printf('It can be seen that the circuit has the four stages: \n Dual-input, differential output. \n Dual-input, single ended output. \n Level translator. \n Emitter follower.\n ');

printf('\n\n For d.c. analysis, assume that the input terminals are shorted to ground.\n');
I = (Vee-Vbe)/R3;
printf(' The reference current I of the current minor Q3-Q4 is obtained as I = %.1f mA. \n',I);
printf('\n Due to current mirror action, Icq4 = I = %.1f mA and Icq1 = Icq2 = Icq/2 = %.3f mA. \n',I,I/2);
Vcq1 = Vcc-(I/2)*R1;
printf(' The collector voltages for Q1 and Q2 are Vcq1 = Vcq2 = %d V. \n',Vcq1);
Veq5 = Vcq1-Vbe;
printf('\n The voltage at emitter of Q5 and Q6 is Veq5 = Veq6 = %.1f V. \n',Veq5);
Icq7=4*I;
printf(' Since the area of Q7 is 4 times that of Q3 and Q4, the transistor Q7 supplies a current Icq7 = %d mA. \n',Icq7);
printf('\n Thus, collector currents of Q5 and Q6 are Icq5 = Icq6 = %d mA. \n',Icq7/2 );
Vcq6 = Vcc-(Icq7/2)*R6;
printf(' Hence, collector voltage of Q6 is Vcq6 = %d V. \n',Vcq6);
Veq8 = Vcq6+Vbe;
printf('\n This causes a voltage at the emitter of pnp transistor Qr i.e Veq8 = %.1f V. \n',Veq8);
Ieq8 = (Vcc-Veq8)/R8;
printf(' The emitter current of Q8 i.e Ieq8 = %d mA. \n',Ieq8);
Va = -Vee + Ieq8*Ra;
printf('\n The voltage Va at the collector of Q8 i.e Vcq8 or the base of Q9 i.e Vbq9 = %.1f V. \n',Va);
printf(' Since the emitter of Q9 will be 0.7 V below the base terminal, \n the voltage at the output terminal 6 is 0 V as is expected.');

Vo = 0; // output voltage(Volts)
Ieq9 = (Vo-(-Vee))/R9;
printf('\n\n The emitter current of Q9 i.e Ieq9 = %d mA. \n',Ieq9);

printf('\n\n//////////////////////////a.c. analysis///////////////////////////\n\n');

h_ie1 = (h_fe*Vt)/(I/2);
printf(' The ac emitter resistance of the transistor Q1-Q2 is h_ie = %.1f kΩ. \n',h_ie1);
h_ie5 = (h_fe*Vt)/(Icq7/2);
printf(' The ac emitter resistance of the transistor Q5-Q6 is h_ie = %.1f kΩ. \n',h_ie5);
RL1 = (1/R1 + 1/h_ie5)^-1;
printf(' Since, emitter of Q5-Q6 is at ground potential under ac conditions,\n the effective load for Q1-Q2 is RL1 = RL2 = %.1f kΩ.\n',RL1);
ADM1 = (h_fe*RL1)/h_ie1;
printf(' The voltage gain of first differential stage is ADM1 = %d. \n',ADM1);
ADM2 = (-1/2)*(h_fe*R6)/h_ie5;
printf(' The voltage gain of second differential stage is ADM2 = (approximately) %d. \n',ADM2);
A3 =-Ra/R8;
printf(' The gain of the level translator stage is A3 = %.2f. \n',A3);
printf(' The last stage is emitter follower, so its voltage gain Av4 = (approximately) 1.');
Av4 = 1;
Av = ADM1 * ADM2 * A3 * Av4;
printf('\n\n So, the overall voltage gain is Av = %d. \n',Av);
