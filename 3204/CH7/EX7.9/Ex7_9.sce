// Initilization of variabes
b=0.1 //m //width of the belt
t=0.008 //m //thickness of the belt
v=26.67 // m/s // belt speed
pie=3.14 // constant
beta=165 // radian // angle of lap for the smaller belt
mu=0.3 // coefficient of friction
sigma_max=2 // MN/m^2 // maximum permissible stress in the belt
m=0.9 // kg/m // mass of the belt
g=9.81 // m/s^2
e=2.718 // constant
// Calculations
A=b*t // m^2 // cross-sectional area of the belt
T_e=m*v^2 // N // where T_e is the Centrifugal tension
T_max=(sigma_max)*(A)*(10^6) // N // maximum tension in the belt
T1=(T_max)-(T_e) // N 
T2=T1/(e^((mu*pie*beta)/180)) //N // from formulae T1/T2=e^(mu*beta)
P=(T1-T2)*v*(10^-3) //kW // Power transmitted
T_o=(T1+T2)/2 // N // Initial tension
// Now calculations to transmit maximum power
Te=T_max/3 // N // max tension
u=sqrt(T_max/(3*m)) // m/s // belt speed for max power
T_1=T_max-Te // N // T1 for case 2
T_2=T_1/(e^((mu*pie*beta)/180)) // N 
P_max=(T_1-T_2)*u*(10^-3) // kW // Max power transmitted
// Results
clc
printf('The initial power transmitted is %f kW \n',P)
printf('The initial tension in the belt is %f N \n',T_o)
printf('The maximum power that can be transmitted is %f kW \n',P_max)
printf('The maximum power is transmitted at a belt speed of %f m/s \n',u)

