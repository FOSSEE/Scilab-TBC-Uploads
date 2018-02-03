// Exa 1.16

clc;
clear;

// Given

// Refer Fig.1.74
Rmv = 200; // Voltmeter resistance in Ohms
Vt = 3; // Terminal voltage(V)
S = 1; // Sensitivity in mm/microV
Rmi = 100; // Galvanometer resistance in Ohms
Deflection = 250; // in mm
S1 = 5; // sesitivity of second galvanometer in mm/micro Amp
Ri = 1000; // Internal resistance of 2nd galvanometer
// Solution

Ig = Deflection/S;
printf(' Current through the galvanometer = %d micro Amp \n',Ig);
Rtotal = Rmv+Rmi;
Vrtotal = Rtotal*Ig*10^-6; // in Volts
Ek = Vt - Vrtotal;
printf('The emf of the unknown source = %.3f V \n',Ek);
printf('1 mm correspponds to 1 micro Amp. Therefore, Resolution = %d micro V/mm \n',Rtotal);

printf('For galvanometer A, 1 mm deflection for 300 mV. So, Sa = 1/300 mm/microV \n');
Sa = 1/300; // Sensitivity of galvanometer A in mm/micro V
printf('For galvanometer B, - \n');
Rbtotal = Ri+Rmv;
// A 5mm deflcetion is caused by 1200 micro V
printf('Sb = 5/1200  mm/microV \n'); // mm/microV
printf('Galvanometer B provides the amplified sensitivity i.e, Since, Sb>Sa \n');
