//Example 2.5.1 page 2.25

clc;
clear;

lamda = 850 *10^-9;
sigma= 45*10^-9;
L= 1;
M= 0.025/(3*10^5*lamda);
sigma_m= sigma*L*M;
sigma_m= sigma_m*10^9; // formatting in ns/km....
printf("The Pulse spreading is %.2f ns/Km",sigma_m);
printf("\n\nNOTE*** - The answer in text book is wrongly calculated..");
