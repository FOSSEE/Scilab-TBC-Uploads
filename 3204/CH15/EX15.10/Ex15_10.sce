// Initilization of variables
mu_a=0.40 // coefficient of friction under block A
n=40 // r.p.m // speed of rotation of frame
W_A=120 // N // weight of block A
W_B=80 // N // weight of block B
r_1=1.2 // m // distance between W_A & axis of rotation
r_2=1.6 // m // distance between W_B & axis of rotation
g=9.81 // m/s^2
// Calculations
// Consider the F.B.D of block A
N=W_A // N // sum F_y=0
omega=(2*%pi*n)/60 // rad/sec
a_n=omega^2*r_1 // m/s^2
T=((W_A/g)*a_n)-(mu_a*W_A) // N
// Now consider the F.B.D of block B
A_n=omega^2*r_2 // m/s^2
N_1=(W_B/g)*A_n // N // sum F_x=0
mu=(T-W_B)/N_1 // sum F_x=0
// Results
clc
printf('The coefficient of friction of block B is %f \n',mu)
