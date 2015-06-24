//Chapter-11 example 19
//=============================================================================
clc;
clear;
//input data
Pp  = 100*10^3;//peak power in watts
Pav = 100;//average power in watts

//Calculations
PdB = 10*log10(Pp);//peak power in dB
PavdB = 10*log10(Pav);//average power in dB;
DCC  = PdB-PavdB;//Duty Cycle Correction factor

//Output
mprintf('Duty Cycle Correction Factor is %g dB\n',DCC);
mprintf(' Note: In question given peak power  is 100KW but while solving 1KW is taken instead of 100KW')

//============end of the program==============================================
