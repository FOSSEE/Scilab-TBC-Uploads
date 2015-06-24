clc;
clear;
Vin=20*10^-6;
Vout=100*10^-3;
A1=45000;//A1 isAmplifier gain
AT=Vout/Vin;//AT is Total gain
printf('\nTotal gain is %.3f',AT);
A2=AT/A1;//A2 is attenuation factor
printf('\nThe atenuation factor needed to to keep the output \nvoltage from exceeding 100 mv is %.4f',A2);
