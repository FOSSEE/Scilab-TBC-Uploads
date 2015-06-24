// Scilab code Ex1.4: Pg.22-23 (2008)
clc; clear;
// For simplicity assume velocity of light be unity
c = 1;    // Velocity of light, m/s
v_1 = 0.6*c;    // Relative velocity of first cosmic ray proton w.r.t earth, m/s
v_2 = -0.8*c;    // Relative velocity of second cosmic ray proton w.r.t earth, m/s
u_2x = (v_2-v_1)/(1-(v_1*v_2)/(c^2));     // Speed of proton 2 in S1_prime frame, m/s
u_1x = (v_1-v_2)/(1-(v_1*v_2)/(c^2));     // Speed of proton 1 in S2_prime frame, m/s
printf("\nSpeed of second proton in S1_prime frame = %4.2fc", u_2x);
printf("\nSpeed of first proton in S2_prime frame = %4.2fc", u_1x);

// Result
// Speed of second proton in S1_prime frame = -0.95c
// Speed of first proton in S2_prime frame = 0.95c 