clear;
clc;

//Example12.2[Emission of Radiation from a Lightbulb]
//Given:-
T=2500;//Temp of the filament[K]
lambda1=0.4,lambda2=0.76;//Visible ranfe[micrometer]
f1=0.000321,f2=0.053035;//The black body radiation functions corresponding to lamda1*T and lambda2*T
//Solution:-
f3=f2-f1;
disp(f3,"Fraction of radiation emitted between the two given wavelengths is")
lambda_max=2897.8/T;//[micrometer]
disp("micron",lambda_max,"The wavelength at which the emission of radiation from the filament peaks is")