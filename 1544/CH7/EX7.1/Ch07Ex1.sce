// Scilab code Ex7.1: Pg 243 (2008)
clc; clear;
Rf = 200;    // The resistance of field winding of a shunt generator, ohm
Po = 80e+03;     // Power delivered by the machine, watt
V = 450;    // The terminal voltage, volt
E = 475;    // The generated emf, volt

// Part (a)
// Po = V*I_L, solving for I_L
I_L = Po/V;     // Load current, A
I_f = V/Rf;     // Current through field resistor, A
I_a = I_L + I_f;    // Current through armature resistance, A
// As I_a*Ra = E - V, solving for Ra
Ra = 25/I_a;    // Armature resistance, ohm

// Part (b)
Po = 50e+03;    // Output power delivered by the machine, watt
V = 460;    // The terminal voltage, volt
I_L = Po/V;     // Load current, A
I_f = V/Rf;     // Current through field resistor, A
I_a = I_L + I_f;    // Current through armature resistance, A
// As I_a*Ra = E - V, solving for E
E = V + I_a*Ra;     // The generated voltage, volt
printf("\nThe armature resistance = %5.3f ohm", Ra);
printf("\nThe value of generated emf = %5.1f V", E);

// Result
// The armature resistance = 0.139 ohm
// The value of generated emf = 475.4 V
