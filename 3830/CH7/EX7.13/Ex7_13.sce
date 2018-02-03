// Exa 7.13

clc;
clear;

// Given

// A variable reluctance-type inductive transducer
L1 = 5; // Inductance of transducer in mH
lg1 = 1.5; // Length of iron piece in mm
d = 0.025; // Distance by which irno piece is moved towards electro magnet (mm)

// Solution

air_gap = lg1-d;
printf(' Length of air gap = %.3f mm \n',air_gap);
New_Inductance = L1 + lg1/air_gap;

printf('  The coil inductance becomes = %.2f mH \n',New_Inductance);

// The answer provided in the textbook is wrong
