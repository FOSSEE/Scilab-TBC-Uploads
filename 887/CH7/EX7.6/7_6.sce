clc
//ex7.6
//Given 11110110.1(binary)
//Working outward from the binary point, we form three-bit groups ==> 11110110.1=011 110 110. 100(we have appended leading and trailing zeros so that each group contains 3 bits)
//And the corresponding numbers for 011,110,110 and 100 in octal system are 3,6,6 and 4
disp('The octal representation of 11110110.1(binary) is 366.4')
//Now we form four-bit groups appending leading and trailing zeros as needed ==> 11110110.1=1111 0110. 1000
//The corresponding numbers for 1111,0110 and 1000 in hexadecimal system are F,6 and 8
disp('The hexadecimal representation of 11110110.1(binary) is F6.8')
