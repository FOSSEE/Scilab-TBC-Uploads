clear;
clc;
disp("--------------Example 19.8---------------")
//address :- 205.16.37.39/28
n=28;   //cidr
exp_of_2 = 32-n;
num_of_addresses= 2^(exp_of_2); //formula to calculate number of addresses
printf("\n The number of addresses in the block is %d.",num_of_addresses); //display the results
