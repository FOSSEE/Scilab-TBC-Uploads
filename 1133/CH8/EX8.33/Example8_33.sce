//Example 8.33
clc
disp("Although the 74X163 is a modulo-16 counter, it can be made to count in a modulus less than 16 by using the CLR'' or LD'' input to shorten the normal counting sequence. The fig.8.69 shows circuit connections for modulo-11 counter. Here, load input is activated upon activation of RCO (ripple-carry-output). Since load input is adjusted to state 5, counter counts from 5 to 15 and then starts at 5 again, for a total of 11 states per counting cycle.")
disp("")
disp("We can also design modulo-11 counter using CLR'' input as shown in fig.8.70. here, NAND gate is used to detect state 10 and force the next state to 0. A 2-input gate is used to detect state 10 (binary 1010) by connecting Q1 and Q3 to the inputs of the NAND gate.")
