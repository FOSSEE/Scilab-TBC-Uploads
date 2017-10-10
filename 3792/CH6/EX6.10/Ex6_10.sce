// SAMPLE PROBLEM 6/10
clc;funcprot(0);
// Given data
l=4;// ft
W=40;// The weight of the slender bar in N
theta=30;// degree
k=30;// The stiffness of the spring in lb/in
ABbar=24;// inch
BDbar=24;// inch
h=-2;// inch
g=32.2;// The acceleration due to gravity in ft/sec^2


// Calculation
// (a)
// T=[[(1/2)*m*v^2]+((1/2)*I_G*omega^2)];
// T=1.449*omega^2;
T_1=0;// ft-lb
U_12=0;// ft-lb
V_1=0;// ft-lb
V_2=W*((2*cosd(theta))-2);// ft-lb
// We now substitute into the energy equation and obtain
omega=sqrt(((T_1+V_1+U_12)-(V_2))/1.449);// rad/sec
// (b)
x=ABbar-18;// ft
V_1=0;// ft-lb
V_3=(1/2)*k*(x^2)/12;// ft-lb
// T=(1/2)*I_A*omega^2;
// T_3=0.828*v_B^2;
U_13=0;// ft-lb
// The final gravitational potential energy is
V_3p=W*h;// ft-lb
v_B=sqrt(((T_1+V_1+U_13)-(V_3+V_3p))/0.828);// ft-lb
printf("\n(a)The angular velocity of the bar,omega=%1.2f rad/sec \n(b)The velocity with which B strikes the horizontal surface,v_B=%1.2f ft/sec",omega,v_B);
