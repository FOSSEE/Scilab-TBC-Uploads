//Chapter-3, Example 3.28, Page 103
//=============================================================================
clc
clear

//INPUT DATA
L=0.06;//Length of the turbine blade in m
A=(4.65*10^-4);//Cross sectional area in m^2
P=0.12;//Perimeter in m
k=23.3;//Thermal conductivity of stainless steel in W/m.K
To=500;//Temperature at the root in degree C
Ti=870;//Temperature of the hot gas in degree C
h=442;//Heat transfer coefficient in W/m^2.K

//CALCULATIONS
m=sqrt((h*P)/(k*A));//Calculation of m for calculating heat transfer rate
X=(To-Ti)/cosh(m*L);//X for calculating tempetarure distribution
Q=sqrt(h*P*k*A)*(To-Ti)*tanh(m*L);//Heat transfer rate in W

//OUTPUT
mprintf('Temperature distribution is given by : T-Ti = %i cosh[%3.2f(%3.2f-x)] \n                                               --------------------\n                                                 cosh[%3.2f(%3.2f)] \n Heat transfer rate is %3.1f W',(To-Ti),m,L,m,L,Q)

//=================================END OF PROGRAM==============================
