clear;
clc;

// Stoichiometry
// Chapter 2
// Basic Chemical Calculations

// Example 2.23

// Page 39
printf("Example 2.23, Page 39 \n \n");

// solution

// (a)
printf("(a) \n \n")
n = 100 // [kmol] cracked gas (basis)
n1 = 45 // methane
n2 = 10 // ethane
n3 = 25 // ethylene
n4 = 7 // propane
n5 = 8 // propylene
n6 = 5 // n-butane
M1 = 16
M2 = 30
M3 = 28
M4 = 44
M5 = 42
M6 = 58
m1 = n1*M1
m2 = n2*M2
m3 = n3*M3
m4 = n4*M4
m5 = n5*M5
m6 = n6*M6
m = m1+m2+m3+m4+m5+m6
M = m/n
printf("Average molar mass of gas is "+string(M)+" g.")
//(b)
printf("(b) \n \n")
// composition
p1 = (m1/m)*100
p2 = m2*100/m
p3 = m3*100/m
p4 = m4*100/m
p5 = m5*100/m
p6 = m6*100/m
printf("   GAS            Mass Percent \n Methane              "+string(p1)+" \n Ethane              "+string(p2)+" \n Ethylene              "+string(p3)+" \n Propane              "+string(p4)+" \n Propylene              "+string(p5)+" \n n-Butane              "+string(p6)+" \n \n \n")
// (c)
printf("(c) \n \n")
// specific gravity
g = M/28.97
printf("Specific gravity is "+string(g)+".")







