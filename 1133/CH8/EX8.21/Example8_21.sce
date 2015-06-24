//Example 8.21
clc
disp("IC 74191 is a 4-bit counter. Thus it is MOD-16 counter. However, we require MOD-9 counter. The difference between 16 and 9 is 7. Hence 7 steps must be skipped from the full modulus sequence. This can be achieved by presetting counter to value 7. Each time when counter recycles it starts counting from 7 upto 16 on each full cycle. Therefore, each full cycle of the counter consists of 9 states.")
