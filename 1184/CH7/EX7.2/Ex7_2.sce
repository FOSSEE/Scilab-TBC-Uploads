//Example 7-2, Page no - 222

clear 
clc

N = 14
discrete_levels = 2^N
num_vltg_inc =2^N-1
resolution = 12/discrete_levels 

printf('The numbedr of discrete levels that are represented \n using N number of bits are %d',discrete_levels)
printf('\n the number odf voltage increments required to divide \n the voltage range are %d',num_vltg_inc)
printf('\n Resolution of the digitization %.1f microvolt',resolution*10^6)
