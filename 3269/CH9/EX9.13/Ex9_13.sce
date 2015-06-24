// Example 9.13
clear all;
clc;

// Given data
H_ext = 3;                                    // External dose in rem
H_wbL = 5;                                    // Annual whole body dose limit in rem
// Using the data from Table 9.17
// Annual Limit Intake (ALI) for inhalation of Iodine-131 is 54uCurie (Ci)
ALI = 54;
// Calculation
I = ALI*(1-(H_ext/H_wbL));
// Result
printf("\n Amount of Iodine-131 intake within safety limits = %d uCi \n",ceil(I));
