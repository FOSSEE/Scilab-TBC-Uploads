// Initilization of variables
V.R=6 // Velocity ratio
P=20 //N // Effort
W=100 //N // Load lifted
// Calculations
//(a)
P_actual=P //N
W_actual=W //N
M.A=W/P // where, M.A= Mechanical advantage
E=(M.A/V.R)*100 //% // Where E= efficiency
//(b)
// Now ideal effort required is,
P_ideal=W/V.R //N
// Effort loss in friction is, (Le)
Le=P_actual-P_ideal //N // Effort loss in friction
//(c)
// Ideal load lifted is,(W_ideal)
W_ideal=P*V.R //N 
// Frictional load/resistance,
F=W_ideal-W_actual // N
// Results
clc
printf('(a) The efficiency of the machine is %f percent \n',E)
printf('(b) The effort loss in friction of the machine is %f N \n',Le)
printf('(c) The Frictional load of the machine is %f N \n',F)

