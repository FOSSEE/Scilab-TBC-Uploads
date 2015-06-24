// Scilab code Ex1.9: Pg 16 (2008)
clc; clear;
E = 6;           // E.m.f of battery, V
r = 0.15;        // Internal resistance of battery, ohm
I_1 = .5;        // Electric current, A
I_2 = 2;          // Electric current, A
I_3 = 10;          // Electric current, A
// Using relation V = E - I*R and substituting the values of I_1, I_2 and I_3 one by one in it
V_1 = E - I_1*r;     // Terminal potential difference, V
V_2 = E - I_2*r;      // Terminal potential difference, V
V_3 = E - I_3*r;       // Terminal potential difference, V
printf("\nThe terminal potential difference developed across resistor for a current of %3.1f A = %5.3f V",I_1,V_1)
printf("\nThe terminal potential difference developed across resistor for a current of %1d A = %3.1f V",I_2,V_2)
printf("\nThe terminal potential difference developed across resistor for a current of %2d A = %3.1f V",I_3,V_3);

// Result
// The terminal potential difference developed across resistor for a current of 0.5 A = 5.925 V
// The terminal potential difference developed across resistor for a current of 2 A = 5.7 V
// The terminal potential difference developed across resistor for a current of 10 A = 4.5 V
