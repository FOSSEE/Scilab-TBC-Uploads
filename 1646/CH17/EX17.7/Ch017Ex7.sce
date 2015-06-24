// Scilab code Ex17.7 : Pg:892 (2011)
clc;clear;
amu = 931.5;    // Energy equivalent of 1 amu, MeV
nucleus = cell(4,3);
nucleus(1,1).entries = 'P';
nucleus(1,2).entries = 15;
nucleus(1,3).entries = 31;
nucleus(1,4).entries = 30.98356;
nucleus(2,1).entries = 'n';
nucleus(2,2).entries = 0;
nucleus(2,3).entries = 1;
nucleus(2,4).entries = 1.00898;
nucleus(3,1).entries = 'Si';
nucleus(3,2).entries = 14;
nucleus(3,3).entries = 31;
nucleus(3,4).entries = 30.98515;
nucleus(4,1).entries = 'p';
nucleus(4,2).entries = 1;
nucleus(4,3).entries = 1;
nucleus(4,4).entries = 1.00814;
Q = ((nucleus(1,4).entries + nucleus(2,4).entries)-(nucleus(3,4).entries + nucleus(4,4).entries))*amu;    // Q-value of the reaction, MeV
E_th = -1*Q*(nucleus(1,4).entries+nucleus(2,4).entries)/nucleus(1,4).entries;
printf("\nThe threshold energy required to initiate the reaction");
printf("\n\t%s(%d,%d) + %s(%d,%d) --> %s(%d,%d) + %s(%d,%d)", nucleus(1,1).entries, nucleus(1,2).entries, nucleus(1,3).entries, nucleus(2,1).entries, nucleus(2,2).entries, nucleus(2,3).entries, nucleus(3,1).entries, nucleus(3,2).entries, nucleus(3,3).entries, nucleus(4,1).entries, nucleus(4,2).entries, nucleus(4,3).entries);
printf("\nis %5.3f MeV", E_th);

// Result
// The threshold energy required to initiate the reaction
//     P(15,31) + n(0,1) --> Si(14,31) + p(1,1)
// is 0.721 MeV 
