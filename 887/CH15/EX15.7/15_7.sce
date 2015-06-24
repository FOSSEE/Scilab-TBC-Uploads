clc
//ex15.7
N=500;      //number of turns of coil
R!=4.6*10^6;      //reluctance of the magnetic path from ex15.5
L=N^2/R!;      //inductance
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp(L*10^3,'Inductance of the given coil in milli-henry')      //milli-10^-3
