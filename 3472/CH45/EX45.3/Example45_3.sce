// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 7: CONTROL OF MOTORS

// EXAMPLE : 7.3 :
// Page number 799
clear ; clc ; close ; // Clear the work space and console

// Given data
W = 132.0          // Weight of electric train(tonnes)
no = 4.0           // Number of motors
V = 600.0          // Voltage of motor(V)
I = 400.0          // Current per motor(A)
F_t_m = 19270.0    // Tractive effort per motor at 400A & 600V(N)
V_m = 39.0         // Train speed(kmph)
G = 1.0            // Gradient
r = 44.5           // Resistance to traction(N/tonne)
inertia = 10.0     // Rotational inertia(%)
R = 0.1            // Resistance of each motor(ohm)

// Calculations
W_e = W*(100+inertia)/100                              // Accelerating weight of train(tonne)
F_t = F_t_m*no                                         // Total tractive effort at 400A & 600V(N)
alpha = (F_t-W*r-98.1*W*G)/(277.8*W_e)                 // Acceleration(km phps)
T = V_m/alpha                                          // Time for acceleration(sec)
t_s = (V-2*I*R)*T/(2*(V-I*R))                          // Duration of starting period(sec)
V_transition = alpha*t_s                               // Speed at transition(km phps)
t_p = T-t_s                                            // (sec)
loss_series = (no/2*((V-2*I*R)/2)*I*t_s)/(1000*3600)   // Energy lost during series period(kWh)
loss_parallel = (no*(V/2)/2*I*t_p)/(1000*3600)         // Energy lost during parallel period(kWh)

// Results
disp("PART IV - EXAMPLE : 7.3 : SOLUTION :-")
printf("\nCase(i)  : Duration of starting period, t_s = %.1f sec", t_s)
printf("\nCase(ii) : Speed of train at transition, αt = %.1f sec", V_transition)
printf("\nCase(iii): Case(a): Rheostatic losses during series starting = %.2f kWh", loss_series)
printf("\n           Case(b): Rheostatic losses during parallel starting = %.2f kWh\n", loss_parallel)
printf("\nNOTE: ERROR: Calculation mistakes in the textbook solution")
