// Example 18_6
clc;funcprot(0);
// Given data
P_ace=4/52;// The probability of getting ace
P_spade=13/52;// The probability of getting spade
P_aceofspades=1/52;// The probability of getting ace of spades

// Calculation
P=(P_ace+P_spade-P_aceofspades)*100;// The probability that it will be an ace or a spade in %
printf("\nThe probability that it will be an ace or a spade,P=%2.1f percentage",P);
