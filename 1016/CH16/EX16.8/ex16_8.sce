clc;clear;
//Example 16.8

//given data
roi=15;//rate of increase in Wb/s
tr=10^6;//total revolutions

//calcualtion
IE=roi*10^-6;//increased energy in MeV
FE=IE*tr;
disp(FE,'Fianl Energy in MeV')