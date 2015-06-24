// Initilization of variabes
W=50 // N // weight
x_0=0.075 // m // amplitude
f=1 // oscillation/sec // frequency
g=9.81 
// Calculations
omega=2*%pi*f
K=(((2*%pi)^2*W)/g)*(10^-2) // N/cm
// let the total extension of the string be delta which is given as,
delta=(W/K)+(x_0*10^2) // cm
T=K*delta // N // Max Tension
v=omega*x_0 //m/s // max velocity
// Results
clc
printf('(a) The stiffness of the spring is %f N/cm \n',K)
printf('(b) The maximum Tension in the spring is %f N \n',T)
printf('(c) The maximum velocity is %f m/s \n',v)
