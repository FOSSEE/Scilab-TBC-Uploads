// Exa 2.13

clc;
clear;

// Given data

// Refering Fig. 2.24 we get,

B=100;  // Current gain
Vbe=0.7; // Volts
Vcc=5; // Volts
R1= 10*10^3; // Ω

// Solution

printf(' Referring to circuit shown in Fig. 2.24 and using KVL we get Iref as ' );
// KVL for loop 1
// Vcc-Vbe-R1*Iref+Vcc = 0;
// Therefore
Iref= (2*Vcc-Vbe)/R1;
printf(' %.2f mA. \n',Iref*1000);
// At emitter node E., Iref=2*Ie (Assuming identical transistors 
//Then;
Ic= B*Iref/(2*(1+B));

printf('  Due to mirror effect, Io = Ic1 = Ic = %0.2f mA. \n ',Ic*1000);
