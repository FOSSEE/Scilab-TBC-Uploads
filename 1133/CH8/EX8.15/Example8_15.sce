//Example 8.15
clc
disp("IC 74191 is a 4-bit counter. Thus it is MOD-16 counter. However, we require MOD-10 counter. The difference between 16 and 10 is 6. Hence 6 steps must be skipped from the full modulus sequence. This can be achieved by presetting counter to value 6. Each time when counter recycles it starts counting from 6 upto 16 on each full cycle. Therefore, each full cycle of the counter consists of 10 states.")
