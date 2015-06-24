// Scilab code Ex6.2: Pg 202 (2008)
clc; clear;
// Part (a)
f = poly(0, "f");       // Declare a variable for freq.
// Given i = 75*sin(200*%pi*t) mA which on comparing with the general expression gives
f = roots(2*%pi*f - 200*%pi);    // Frequency of alternating current, Hz

// Part(b)
i = 35;     // Alternating current after passing through zero, mA
t = asin(i/75)/(200*%pi*1e-03);   // Time taken for current to reach 35 mA, ms

printf("\nThe frequency of alternating current = %2d Hz", f);
printf("\nThe time taken for current to reach 35 mA = %5.3f mA", t);

// Result
// The frequency of alternating current = 100 Hz
// The time taken for current to reach 35 mA = 0.773 mA
