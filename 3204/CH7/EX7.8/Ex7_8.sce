// Initilization of variables
d1=0.45 //m // diameter of larger pulley
d2=0.20 //m // diameter of smaller pulley
d=1.95 //m // separation between the pulley's
T_max=1000 //N // or 1kN which is the maximum permissible tension
mu=0.20 // coefficient of friction
N=100 // r.p.m // speed of larger pulley
e=2.718 // constant
pie=3.14 // constant
T_e=0 //N // as the data for calculating T_e is not given we assume T_e=0
// Calculations
r1=d1/2 //m // radius of larger pulley
r2=d2/2 //m // radius of smaller pulley
theta=asind((r1+r2)/d) // degree
// for cross drive the angle of lap for both the pulleys is same
beta=((180+(2*(theta)))*pie)/180 //radian
T1=T_max-T_e //N
T2=T1/(e^(mu*(beta))) //N // from formulae, T1/T2=e^(mu*beta)
v=((2*pie)*N*r1)/60 // m/s // where v=velocity of belt which is given as, v=wr=2*pie*N*r/60
P=(T1-T2)*v*(10^-3) //kW // Power
// Results
clc
printf('The power transmitted by the cross belt drive is %f kW \n',P)
// the approx answer is 1.3 kW The answer given in the book (i.e 1.81kW) is wrong.
