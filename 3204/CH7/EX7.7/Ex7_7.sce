// Initilization of variables
Pw=50 //kW
T_max=1500 //N
v=10 // m/s // velocity of rope
w=4 // N/m // weight of rope
mu=0.2 // coefficient of friction 
g=9.81 // m/s^2 // acceleration due to gravity
e=2.718 // constant
pie=3.14 // constant
alpha=30 // degree // since 2*alpha=60 
// Calcuations
beta=pie // radian // angle of lap
T_e=(w*v^2)/g // N // where T_e is the centrifugal tension
T1=(T_max)-(T_e) //N
T2=T1/(e^(mu*(1/sind(alpha))*(beta))) //N // From eq'n T1/T2=e^(mu*cosec(alpha)*beta)
P=(T1-T2)*v*(10^-3) //kW // power transmitted by a single rope
N=Pw/P // Number of ropes required
// Results
clc
printf('The number of ropes required to transmit 50 kW is %f Nos \n',N)
// approx no of ropes is 5
