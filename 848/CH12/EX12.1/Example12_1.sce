//clear//
//Caption:Effective length of fiber
//Example12.1
//page 432
clear;
clc;
close;
L = 75;//amplifier spcaing in kilometer
alpha = 4.61e-02; //fiber attenuation per Km
Leff = (1-exp(-alpha*L))/alpha;
disp(Leff,'Effective length of fiber in kilo meters Leff =')
//Result
//Effective length of fiber in kilo meters Leff = 21.008494 
