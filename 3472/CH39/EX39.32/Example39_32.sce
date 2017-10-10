// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.32 :
// Page number 711
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 400.0        // Voltage of synchronous motor(V)
p = 8.0          // Number of poles
J = 630.0        // Moment of inertia(kg-m^2)
T_E = 165.0      // Braking torque(kg-m)
kw_1 = 690.0     // Electric braking torque(kg-m)
T_F = 1.4        // Frictional torque(kg-m)
f = 50.0         // Frequency(Hz). Assumed normal supply frequency

// Calculations
g = 9.81
// Case(a) Plugging
T_B = T_E+T_F                                                         // Torque(kg-m)
beta = T_B*g/J                                                        // Retardation(rad/sec^2)
N_s = 120*f/p                                                         // Synchronous speed(rad/sec)
w = 2*%pi*N_s/60                                                      // ω(rad/sec)
t_a = integrate('-1.0/beta','w', w, 0)                                // Time taken to stop the motor(sec)
n_a = integrate('-w/(2*%pi*beta)','w', w, 0)                          // Number of revolutions
// Case(b) Rheostatic braking
k = kw_1/w
t_b = J/(g*k)*log((T_F+kw_1)/T_F)                                     // Time taken to stop the motor(sec)
n_b = 1.0/(2*%pi*k)*(J/(g*k)*(T_F+kw_1)*(1-exp(-k*g*t_b/J))-T_F*t_b)  // Number of revolutions

// Results
disp("PART IV - EXAMPLE : 1.32 : SOLUTION :-")
printf("\nCase(a): Time taken to come to standstill by plugging, t = %.1f sec", t_a)
printf("\n         Number of revolutions made to come to standstill by plugging, n = %.f revolutions", n_a)
printf("\nCase(b): Time taken to come to standstill by rheostatic braking, t = %.1f sec", t_b)
printf("\n         Number of revolutions made to come to standstill by rheostatic braking, n = %.f revolutions\n", n_b)
printf("\nNOTE: ERROR: Calculation mistake in finding number of revolution in case(a) in textbook solution")
