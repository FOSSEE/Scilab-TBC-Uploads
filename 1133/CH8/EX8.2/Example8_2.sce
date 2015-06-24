//Example 8.2
clc
a=dec2bin(144)
disp(a,"decimal (144) =")
disp("Since counter is a 5-bit counter, it resets after 2^5 = 32 clock pulses.")
disp("Dividing 144 by 32 we get quotient 2 and remainder 6")
disp("Therefore, counter resets four times and then it counts remaining 16 clock pulses. Thus, the count will be binary (110000), i.e., 16 in decimal")
