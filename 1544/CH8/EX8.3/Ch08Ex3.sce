// Scilab code Ex8.3: Pg 258 (2008)
clc; clear;
E = 110;    // Value of d.c. voltage supply, volt
L = 1.5;    // Inductor value, henry
R = 220;    // Value of series resistor, ohm

// Part (a)
di_dt = E/L;    // The initial rate of change of current through inductor, H
printf("\nThe initial rate of change of current through inductor = %5.2f A/s", di_dt);

// Part (b)
I = E/R;    // The final steady current, A
printf("\nThe final steady current through inductor = %3.1f A", I);

// Part (c)
tau = L/R;    // The time taken for the current to reach its fi nal steady value, s
printf("\nThe time taken for the current to reach its final steady value = %4.1f ms", 5*tau/1e-03);

// Result
// The initial rate of change of current through inductor = 73.33 A/s
// The final steady current through inductor = 0.5 A
// The time taken for the current to reach its final steady value = 34.1 ms 
