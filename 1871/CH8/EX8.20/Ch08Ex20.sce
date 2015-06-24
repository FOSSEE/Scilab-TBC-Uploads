// Scilab code Ex8.20 : Pg:346(2008)
clc;clear;
n1 = '11010', n2 = 'AB60', n3 = "777";
printf("\nThe %s of binary = %d of decimal", n1, bin2dec(n1)); // Convert from binary to decimal 
printf("\nThe %s of hex = %d of decimal", n2, hex2dec(n2));  // Convert from hex to decimal
printf("\nThe %s of octal = %d of decimal", n3, oct2dec(n3));  // Convert from octal to decimal

// Result 
// The 11010 of binary = 26 of decimal
// The AB60 of hex = 43872 of decimal
// The 777 of octal = 511 of decimal
