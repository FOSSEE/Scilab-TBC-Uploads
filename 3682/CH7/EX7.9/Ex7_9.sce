// Exa 7.9

clc;
clear;

// Given data

fo=10; // Hz

// Solution

disp(" For a switched capacitor integrator, assume fCK=1000 Hz.");
fCK=1000; // Hz
 disp(" From Eq. (7.129) on page no. 293, we get, ");
 disp(" Cf/C1 =x= fCK/(2*%pi*fo). ");  // x = ratio of Cf by C1
x=fCK/(2*%pi*fo);
disp(" Lets choose cF=15.9 pF.");
cF=15.9*10^-12; // Farads
C1=cF/x;
printf('  By calculation C1 = %d pF.\n ',round(C1*10^12));
disp(" For RC integrator, select R1=1.6*10^6 Ω.") ;
R1=1.6*10^6; // Ω
cF1=1/(2*%pi*R1*fo); 
printf('  By calculation cF = %d nF. \n',round(cF1*10^9));
disp("");
printf('  The values of R1 = 1.6 mHz and cF = 10nF are not quite practical for a monolothic circuit.\n      From this, it is obvious that switched capacitor circuits are more practical so far as IC fabrication is concerned.\n  So it can be seen that an SC integrator requires very low values of capacitance compared to lossy integrator.');
disp("");
printf('  If a resistor R2 is placed in parallel with the feedback capacitor cF of Fig. 7.26(a), a lossy or practical integrator is obtained. \n  The transfer function for this circuit is given in Eq. (7.130) and (7.131) on page no. 294.' );

printf('\n \n  The switched capacitor implementation of Fig. 7.26(a) is shown in Fig. 7.26(b)\n  where resistors R1 and R2 have been replaced by switched capacitors C1 and C2 and its MOS version is in Fig. 7.26(c).');
