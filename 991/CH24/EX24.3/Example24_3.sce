//Example 24.3. convert decimal to hexadecimal number
clc
h=dec2hex([112])
disp("The procedure is as follows,")
disp("(i) 112 divided by 16 = quotient 7 with a remainder of 0")
disp("      7 divided by 16 = quotient 0 with a remainder of 7")
disp(h,"decimal 112 = hex")
disp("(ii) 253 divided by 16 = quotient 7 with a remainder of 13 i.e. D")
disp("      15 divided by 16 = quotient 0 with a remainder of 15 i.e. F")
h=dec2hex([253])
disp(h,"decimal 253 = hex")