// Exa 6.1

clc;
clear;

// Given data

// IC 7805 is specified
Veb_on=1; // Volts
B=15; // Current gain
R1=100; // Load 1(Ω)
R2=5; // Load 2(Ω)
R3=1; // Load 3(Ω)

// Solution

// Case(1)
printf(' Load = 100 Ω \n\n');
printf('For IC 7805, the output voltage across the load will be 5 V.\n ');
V1=5; // Voltage across load 
IL1=V1/R1;
VR1= 7 * IL1; // Voltage across R1
printf('The output current coming from 7805 = IL1 = Io = Ii = %d mA. \n ',IL1*1000);
printf('The voltage across R1 = %.2f V which is less than 0.7 V. Hence Q1 is off. \n ',VR1);
printf('So Ic1 = 0.');
printf('\n\n');



// Case(2)
printf('  Load = 5 Ω \n');
printf('\n For IC 7805, the output voltage across the load will be 5 V.\n ');
V2=5; // Voltage across load 
IL2=V2/R2;
VR2= 7 * IL2; // Voltage across R2
printf('The output current coming from 7805 = IL2 = Io = Ii = %d A. \n ',IL2);
printf('Assume that the entire current comes through regulator and that Q1 is OFF. Now the voltage drop across R1 is equal to %d V.\n Thus,our assumption is wrong and Q1 is ON.\n ',VR2);

// From equation 6.10- Il2 = 1A = (B+1)*Io-B*Veb_on/R2;
// Therefore
Io2 = (IL2+(B*Veb_on)/7)/(B+1);
// From equation 6.6- IL2 = 1A = Ic2+Io2;
// Therefore
Ic2= IL2-Io2;
printf('Using equations 6.6 and 6.10 we got values as Io2 = %d mA and Ic2 = %d mA. \n ',Io2*1000,Ic2*1000);
printf('\n\n');



// Case(3)
printf('  Load = 1 Ω \n');
printf('\n For IC 7805, the output voltage across the load will be 5 V.\n ');
V3=5; // Voltage across load 
IL3=V2/R3;
VR3= 7 * IL3; // Voltage across R3
printf('The output current coming from 7805 = IL3 = Io = Ii = %d A. \n ',IL3);
printf('Assume that the entire current comes through regulator and that Q1 is OFF. Now the voltage drop across R1 is equal to %d V.\n Thus,our assumption is wrong and Q1 is ON.\n ',VR3);

// From equation 6.10- IL3 = 5A = (B+1)*Io-B*Veb_on/R3;
// Therefore
Io3 = (IL3+(B*Veb_on)/7)/(B+1);
// From equation 6.6- IL3 = 5A = Ic3+Io3;
// Therefore
Ic3= IL3-Io3;
printf('Using equations 6.6 and 6.10 we got values as Io3 = %d mA and Ic3 = %.3f Amp. \n ',Io3*1000,Ic3);
