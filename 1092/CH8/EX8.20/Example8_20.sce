// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 8: AC DYNAMO TORQUE RELATIONS - SYNCHRONOUS MOTORS
// Example 8-20

clear; clc; close; // Clear the work space and console.

// Given data
f_a = 400 ; // Frequency of the alternator in Hz
f_m = 60 ; // Frequency of the motor in Hz

// Calculations
Pole_ratio = f_a / f_m ; // Ratio of no. of poles in alternator to that of motor
// Subscript 1 below indicates 1st combination
P_a1 = 40 ; // first combination must have 40 poles on the alternator
P_m1 = 6 ; // first combination must have 6 poles on the synchronous motor at a speed
S_m1 = (120*f_m) / P_m1 ; // Speed of the motor in rpm

// Subscript 2 below indicates 2nd combination
P_a2 = 80 ; // second combination must have 40 poles on the alternator
P_m2 = 12 ; // second combination must have 12 poles on the synchronous motor at a speed
S_m2 = (120*f_m) / P_m2 ; // Speed of the motor in rpm

// Subscript 13below indicates 3rd combination
P_a3 = 120 ; // third combination must have 40 poles on the alternator
P_m3 = 18 ; // third combination must have 18 poles on the synchronous motor at a speed
S_m3 = (120*f_m) / P_m3 ; // Speed of the motor in rpm

// Display the result
disp("Example 8-20 Solution : ");

printf(" \n Since P_a/P_m = f_a/f_m = %d/%d, or %d/%d, the ratio of",f_a,f_m,f_a/20,f_m/20);
printf(" \n f_a/f_m determines the combinations of poles and speed.\n");
printf(" \n Only even multiples of the above ratio are possible,since poles ");
printf(" \n are always in pairs, hence first three combinations are as follows \n");

printf(" \n The first combination must have %d poles on the alternator and ",P_a1);
printf(" \n %d poles on the sychronous motor at a speed = %d rpm.\n",P_m1,S_m1);

printf(" \n The second combination must have %d poles on the alternator and ",P_a2);
printf(" \n %d poles on the sychronous motor at a speed = %d rpm.\n",P_m2,S_m2);

printf(" \n The third combination must have %d poles on the alternator and ",P_a3);
printf(" \n %d poles on the sychronous motor at a speed = %d rpm.\n",P_m3,S_m3);

printf(" \n ___________________________________________________________________");
printf(" \n Combination \t  Alternator Poles \t  Motor Poles \t Speed (rpm)");
printf(" \n             \t         P_a       \t      P_m      \t     S      ");
printf(" \n ___________________________________________________________________");
printf(" \n First \t\t:\t  %d\t\t       %d \t    %d",P_a1,P_m1,S_m1);
printf(" \n Second\t\t:\t  %d\t\t       %d \t    %d",P_a2,P_m2,S_m2);
printf(" \n Third \t\t:\t  %d\t\t       %d \t    %d",P_a3,P_m3,S_m3);
printf(" \n ___________________________________________________________________");
