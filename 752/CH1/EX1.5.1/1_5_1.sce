clc;
// page no 21
// prob no 1_5_1
//Series tuned resonant ckt is given which is tuned at 25 MHz with 
//series resistance 5 ohm self capacitance 7 pF and inductance 1 uH 
C=7*10^-12;R=5;L=10^-6;f=25*10^6;
//Determination of self resonant freq of coil denoted as Fsr
Fsr=1/(2*3.14*(L*C)^0.5);
disp('MHz',Fsr/(10^6),+'The value of self resonant freq is');
//Determination of Q-factor of coil,excluding self-capacitive effects
Q=(2*3.14*f*L)/R;
disp(Q,'The value of Q-factor is');
//Determination of effective inductance
Leff=L/(1-(f/Fsr)^2);
disp('uH',Leff*(10^6),+'The value of effective inductance is');
//Determination of effective Q-factor
Qeff=Q*(1-(f/Fsr)^2);
disp(Qeff,'The value of effective Q-factor is');