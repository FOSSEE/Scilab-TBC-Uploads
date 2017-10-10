//Chapter 13: Fuel and Combustions
//Problem: 5
clc;

//Declaration of Variables
V = 0.1       // metre cube
W = 25        // kg
t1 = 20       // C
t2 = 33       // C
m = 0.025     // kg

// Solution
HCV = W * (t2 - t1) / V
LCV = HCV - (m / V) * 580
mprintf("HCV is %d kcal / metre cube\n", HCV)
mprintf(" LCV is %d kcal / metre cube", LCV)
