// Example 2.2.1 page 2.4

clc;
clear;

alpha= 3;   // average loss     Power decreases by 50% so P(0)/P(z)= 0.5
lamda= 900*10^-9;   //wavelength
z= 10*log10(0.5)/alpha;   //z is the length
z= z*-1;
printf("The length over which power decreases by 50%% is =%.2f Kms",z);

z1= 10*log10(0.25)/alpha;     //Power decreases by 75% so P(0)/P(z)= 0.25
z1=z1*-1;   //as distance cannot be negative...
printf("\n\nThe length over which power decreases by 75%% is =%.2f Kms",z1);
