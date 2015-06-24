// Example 9.20.1  page 9.65

clc;
clear;

gain_db=25;
lamdaP=980d-9;
lamdaS=1550d-9;
Pp=40d-3;

gain=10^(gain_db/10);       //computing gain
Pin=(lamdaP/lamdaS)*Pp/(gain-1);    //computing maximum input power
Pout=Pin+(lamdaP/lamdaS)*Pp;        //computing maximum output power
Pout_db=10*log10(Pout/10^-3);       //computing maximum output power in dB
Pin=Pin*10^6;
printf("\nGain is %.2f.\nMaximum input power is %.2f microWatt.\nMaximum  output power is %.2f dbm.",gain,Pin,Pout_db);
printf("\n\nNOTE - calculation error in max input power instead of G-1, G-100 is taken.");

//answer in the book for Max output power is 14.03 dBm, deviation of 0.01
//calculation error in max input power instead of G-1, G-100 is taken, answer given is 116 microWatt
