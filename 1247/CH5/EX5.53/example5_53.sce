clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.53
// Page 308
printf("Example 5.53, Page 308 \n \n");

// solution

F = 1135
Benzenef = 400*.993
HNO3con = Benzenef*63/78
H1 = -186.5
C11 = 1.88
H11 = H1+C11*(298.15-273.15)
H2 = -288.9
C12 = 1.96
H22 = H2+C12*(298.15-273.15)
H3 = 0
C13 = 1.98
H33 = C13*(298.15-273.15)
Hr = -285.83+12.5-(-174.1+49.08)
Benzener = Benzenef/78.1118
fi = 903.84*H22+HNO3con*H33-F*H11+Benzener*Hr*1000  // kJ/h
printf(" Total heat exchanged = "+string(fi)+" kJ/h.")
