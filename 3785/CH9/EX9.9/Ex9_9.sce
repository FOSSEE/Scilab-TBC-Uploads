// Example 9_9
clc;funcprot(0);
// Given data
D=1*10^-2;// m
h_1=10;// m
h_4=0;// m
L_12=3;// m
L_13=4;// m
L_14=5;// m
g=9.807;// The acceleration due to gravity in m/s^2
nu=1.0*10^-6;// The kinematic viscosity in m/s^2

// Calculation
// Because of the symmetry of the network. h1- h2 = h3-h4,Q12 = Q34 and Q13 = Q24.
// Assume 
h_2a=5;// m
h_3a=5;// m
deltah_12=h_1-h_2a;// m
deltah_13=h_1-h_3a;// m
sqrtoffintoRe_D_12=((2*g*deltah_12*D^3)/(((nu)^2)*L_12))^(1/2);
Re_D_12=-2*sqrtoffintoRe_D_12*log10((2.51/(sqrtoffintoRe_D_12)));// Reynolds number
Q_12=(%pi*D*nu*Re_D_12)/4;// The volume flow rate in m^3/s
sqrtoffintoRe_D_13=((2*g*deltah_13*D^3)/(((nu)^2)*L_13))^(1/2);
Re_D_13=-2*sqrtoffintoRe_D_13*log10((2.51/(sqrtoffintoRe_D_13)));// Reynolds number
Q_13=(%pi*D*nu*Re_D_13)/4;// The volume flow rate in m^3/s
Q_23=0;// The volume flow rate in m^3/s
Q_24=Q_13;// The volume flow rate in m^3/s
deltaQ_2a=Q_12-Q_23-Q_24;// m^3/s
// Assume 
h_2b=6;// m
h_3b=4;// m
deltah_12=4;// m
deltah_13=6;// m
deltah_23=2;// m
sqrtoffintoRe_D_12=((2*g*deltah_12*D^3)/(((nu)^2)*L_12))^(1/2);
Re_D_12=-2*sqrtoffintoRe_D_12*log10((2.51/(sqrtoffintoRe_D_12)));// Reynolds number
Q_12=(%pi*D*nu*Re_D_12)/4;// The volume flow rate in m^3/s
sqrtoffintoRe_D_13=((2*g*deltah_13*D^3)/(((nu)^2)*L_13))^(1/2);
Re_D_13=-2*sqrtoffintoRe_D_13*log10((2.51/(sqrtoffintoRe_D_13)));// Reynolds number
Q_13=(%pi*D*nu*Re_D_13)/4;// The volume flow rate in m^3/s
sqrtoffintoRe_D_23=((2*g*deltah_23*D^3)/(((nu)^2)*1))^(1/2);
Re_D_23=-2*sqrtoffintoRe_D_23*log10((2.51/(sqrtoffintoRe_D_23)));// Reynolds number
Q_23=(%pi*D*nu*Re_D_23)/4;// The volume flow rate in m^3/s
deltaQ_2b=Q_12-Q_23-Q_24;// m
h_2=h_2a-(((h_2b-h_2a)/(deltaQ_2b-deltaQ_2a))*deltaQ_2b);// m
// Proceeding in this manner for two more iterations, we converge to the solution:
h_2=5.11;// m
h_3=4.89;// m
deltah_12=h_1-h_2;// m
deltah_13=h_1-h_3;// m
deltah_23=h_2-h_3;// m
sqrtoffintoRe_D_12=((2*g*deltah_12*D^3)/(((nu)^2)*L_12))^(1/2);
Re_D_12=-2*sqrtoffintoRe_D_12*log10((2.51/(sqrtoffintoRe_D_12)));// Reynolds number
Q_12=(%pi*D*nu*Re_D_12)/4;// The volume flow rate in m^3/s
sqrtoffintoRe_D_13=((2*g*deltah_13*D^3)/(((nu)^2)*L_13))^(1/2);
Re_D_13=-2*sqrtoffintoRe_D_13*log10((2.51/(sqrtoffintoRe_D_13)));// Reynolds number
Q_13=(%pi*D*nu*Re_D_13)/4;// The volume flow rate in m^3/s
sqrtoffintoRe_D_23=((2*g*deltah_23*D^3)/(((nu)^2)*1))^(1/2);
Re_D_23=-2*sqrtoffintoRe_D_23*log10((2.51/(sqrtoffintoRe_D_23)));// Reynolds number
Q_23=(%pi*D*nu*Re_D_23)/4;// The volume flow rate in m^3/s
Q_2=Q_13+Q_12;// m^3/s
printf("\nThe flow rate,Q=%1.3e m^3/s",Q_2);
