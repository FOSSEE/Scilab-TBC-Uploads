// SAMPLE PROBLEM 5/5
clc;funcprot(0);
// Given data
r_1=4;// inch
r_2=4;// inch
// Case(a)
// Pulley 1:
omega_1a=0;// rad/sec
omega_dot=0;// rad/sec
alpha_1a=omega_dot;
// Pulley 2:
omega_2a=2;// rad/sec
alpha_2a=-3;// rad/sec^2
// Case(b)
// Pulley 1:
omega_1b=1;// rad/sec
alpha_1b=4;// rad/sec^2
// Pulley 2:
omega_2b=2;// rad/sec
alpha_2b=-2;// rad/sec^2
ABbar=12;// inch
AObar=4;// inch

// Calculation
// Case (a)
v_D=r_2*omega_2a;// in/sec
a_D=r_2*alpha_2a;// in/sec
omega=v_D/ABbar;// rad/sec
alpha=a_D/ABbar;// in/sec^2
v_O=AObar*omega;// rad/sec (CCW)
a_O=AObar*alpha;// rad/sec^2 (CW)
printf("\n(a)omega=%0.3f rad/sec (CCW)\n   alpha=%1.0f rad/sec^2 (CW) \n   v_O=%1.3f in/sec \n   a_O=%1.0f in/sec^2",omega,alpha,v_O,a_O);
// Case (b)
v_C=r_1*omega_1b;// in/sec
v_D=r_2*omega_2b;// in/sec
a_C=r_1*alpha_1b;// in/sec^2
a_D=r_2*alpha_2b;// in/sec^2
omega=(v_D-v_C)/ABbar;// rad/sec (CCW)
alpha=(a_D-a_C)/ABbar;// rad/sec^2 (CW)
v_O=v_C+(AObar*omega);// in/sec
a_O=a_C+(AObar*alpha);// in/sec
printf("\n(b)omega=%0.3f rad/sec (CCW)\n   alpha=%1.0f rad/sec^2 (CW) \n   v_O=%1.3f in/sec \n   a_O=%1.0f in/sec^2",omega,alpha,v_O,a_O);
