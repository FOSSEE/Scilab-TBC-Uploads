//Example 8.32
clc
disp("Cascading four 74161 (each 4-bit) counters we get 16 (4 x 4) bit counter as shown in fig 8.63.")
disp("Therefore, we get 2^16 = 65,536 modulus counter")
disp("However, we require divide-by-40,000 counter. The difference between 65,536 and 40,000 is 25,536, which is the number of states those must be skipped from the full modulus sequence. This can be achieved by presetting the counting from 25,536 upto 65,536 on each ful cycle. Therefore, each full cycle of the counter consists of 40,000 states.")
