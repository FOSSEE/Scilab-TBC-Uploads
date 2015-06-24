
//Exa:4.7
clc;
clear;
close;
//Given:
Fc=540;//in kHz
Fif=455;//in kHz
Flo=Fc+Fif;
printf("\n 1)when local oscillator tracks above frequency of received frequency \n Flo= %fKHz ",Flo);
Flo=Fc-Fif;
printf("\n 1)when local oscillator tracks below frequency of received frequency \n Flo= %fKHz ",Flo);