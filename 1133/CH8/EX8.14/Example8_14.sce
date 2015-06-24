//Example 8.14
clc
disp("IC 74191 is a 4-bit counter. Thus it is MOD-16 counter. However, we require MOD-11 counter. The difference between 16 and 11 is 5. Hence 5 steps must be skipped from the full modulus sequence. This can be achieved by presetting counter to value 5. Each time when counter recycles it starts counting from 5 upto 16 on each full cycle. Therefore, each full cycle of the counter consists of 11 states.")
