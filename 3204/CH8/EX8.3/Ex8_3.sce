// Calculations
W_actual=1360 //N //Load lifted
P_actual=100 //N // Effort
n=4 // no of pulleys
// Calculations
// for 1st system of pulleys having 4 movable pulleys, Velocity ratio is
V.R=2^(n) // Velocity Ratio
// If the machine were to be ideal(frictionless)
M.A=V.R // Here, M.A= mechanical advantage 
// For a load of 1360 N, ideal effort required is
P_ideal=W_actual/V.R //N
// Effort loss in friction is,
P_friction=P_actual-P_ideal //N
// For a effort of 100 N, ideal load lifted is,
W_ideal=V.R*100 //N 
// Load lost in friction is,
W_friction=W_ideal-W_actual // N 
// Results
clc
printf('(a) The effort wasted in friction is %f N \n',P_friction)
printf('(b) The load wasted in friction is %f N \n',W_friction)
