// chapter 13
// example 13.14
// Determine total average power loss and percentage increase in deivce rating
// page-840-841
clear;
clc;
// given
T_J=150; // in degree C (maximum junction temperature)
Q_JC=0.015; // in degree C/W
Q_CS=0.08; // in degree C/W
Ta_1=60; // in degree (heat sink temperature1)
Ta_2=50 // in degree (heat sink temperature2)
// calculate
Pav1=(T_J-Ta_1)/(Q_JC+Q_CS);
Pav2=(T_J-Ta_2)/(Q_JC+Q_CS);
percent_increase=((sqrt(Pav2)-sqrt(Pav1))/sqrt(Pav1))*100;
printf("\nThe total average power loss is \t\t\t Pav1=%.2f W",Pav1);
printf("\nThe required percentage increase in deivce rating is \t %.2f %%",percent_increase);

// Note :The answer vary slightly due to precise calculation