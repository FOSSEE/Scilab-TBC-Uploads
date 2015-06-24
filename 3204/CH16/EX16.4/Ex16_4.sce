// Initilization of variables
M=500*10^3 // kg // mass of the train
u=0 // m/s // initial speed
v=90*(1000/3600) // m/s // final speed
t=50 // seconds
F_r=15*10^3 // N // Frictioal resistance to motion
// Calculations
// Acceleration is given as,
a=v/t // m/s^2
// The total force required to accelerate the train is,
F=M*a // N
// The maximum power required is at, t=50s & v=25 m/s
P=(F+F_r)*v*(10^-6) // MW
// At any time after 50 seconds, the force required only to overcome the frictional resistance of 15*10^3 N is,
P_req=F_r*v*(10^-3) // kW
// Results
clc
printf('(a) The maximum power required is %f MW \n',P)
printf('(b) The power required to maintain a speed of 90 km/hr is %f kW \n',P_req)
