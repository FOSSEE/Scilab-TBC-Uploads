// Ex19_4 Page:373 (2014)
clc;clear;
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
E = 200;     // Energy released per fission, MeV
P = 300e+006;    // Power of the nuclear reactor, W
n = P/(E*1e+006*e);    // Number of fission reactions taking place per second
printf("\nThe number of fission reactions taking place per second = %4.2e", n);

// Result
// The number of fission reactions taking place per second = 9.38e+018 