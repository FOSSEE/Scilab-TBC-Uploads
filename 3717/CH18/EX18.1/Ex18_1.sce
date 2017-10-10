// Ex18_1 Page:347 (2014)
clc;clear;
N0 = poly(0, 'N0');    // Declare the original number of nuclides
HL = [2 5 10];    // Half lives, time units
for i = 1:3
printf("\nAfter %d half lives, the fraction remains = 1/%d", HL(i), 2^HL(i));
end

// Result
// After 2 half lives, the fraction remains = 1/4
// After 5 half lives, the fraction remains = 1/32
// After 10 half lives, the fraction remains = 1/1024