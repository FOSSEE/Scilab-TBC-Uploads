// Initilization of variables
a=1 // m/s^2 // downward/upward acceleration of the elevator
W=500 // N // Weight of man
g=9.81 // m/s^2 // acceleration due to gravity
// Calculations
// (a) Downward Motion 
R_1=W*(1-(a/g)) // N // (Assume pressure as R_1)
// (b) Upward Motion
R_2=W*(1+(a/g)) // N // (Assume pressure as R_2)
// Results
clc
printf('(a) The pressure transmitted to the floor by the  man for Downward motion of the elevator is %f N \n',R_1)
printf('(b) The pressure transmitted to the floor by the  man for Upward motion of the elevator is %f N \n',R_2)
