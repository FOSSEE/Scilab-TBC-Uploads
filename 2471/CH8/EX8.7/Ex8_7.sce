clear ;
clc;
// Example 8.7
printf('Example 8.7\n\n');
printf('Page No. 235\n\n');

//given
N = 40;// Number of lamps
T1 = 15;// Operating time in h per day
P = 500;// POwer from the lamps in W
T2 = 300;// Total operating time in days per year
C = 2.5/10^3;// Electricity cost in p per Wh

An_Cost = N*P*T1*T2*C*10^-2;// In euro
printf('The Annual Cost is %.0f Euro \n',An_Cost)

//Improvement in light by installing glassfibre skylights
T3 = 5;//   Extra Time for natural lighting in h per day
New_An_Cost = N*P*(T1-T3)*T2*C*10^-2;// In euro
printf('The New Annual Cost is %.0f Euro \n',New_An_Cost)

Save = An_Cost - New_An_Cost;// in euro
printf('The annual saving for a pay-back period of 2.5 years is %.0f ',Save)


