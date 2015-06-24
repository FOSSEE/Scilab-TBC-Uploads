clear;
clc;
printf("\t\t\tExample Number 10.6\n\n\n");
// design of shell-and-tube heat exchanger
// Example 10.5 (page no.-534-536) 
// solution

m_dot_c = 3.8;// [kg/s] water flow rate
Ti = 38;// [degree celsius] initial temperature of water
Tf = 55;// [degree celsius] final temperature of water
m_dot_h = 1.9;// [kg/s] water flow rate entering the exchanger
Te = 93;// [degree celsius] entering water temperature
U = 1419;// [W/square meter degree celsius] overall heat transfer coefficient
d = 0.019;// [m] diameter of tube
v_avg = 0.366;// [m/s] average water velocity in exchanger
Cc = 4180;// [] specific heat of water
Ch = Cc;// [] specific heat 
rho = 1000;// [kg/cubic meter] density of water
// we first assume one tube pass and check to see if it satisfies the conditions of this problem. the exit temperature of the hot water is calculated from
dTh = m_dot_c*Cc*(Tf-Ti)/(m_dot_h*Ch);// [degree celsius]
Th_exit = Te-dTh;// [degree celsius]
// the total required heat transfer is obtained for the cold fluid is 
q = m_dot_c*Cc*(Tf-Ti);// [W]
// for a counterflow exchanger, with the required temperature 
LMTD = ((Te-Tf)-(Th_exit-Ti))/log((Te-Tf)/(Th_exit-Ti));// [degree celsius]
dTm = LMTD;// [degree celsius]
A = q/(U*dTm);// [square meter]
// using the average water velocity in the tubes and the flow rate, we calculate the total area with
A1 = m_dot_c/(rho*v_avg);// [square meter]
// this area is the product of number of tubes and the flow area per tube:
n = A1*4/(%pi*d^(2));// no. of tubes
n = ceil(n);// rounding of value of n because no. of pipe is an integer value
// the surface area per tube per meter of length is 
S = %pi*d;// [square meter/tube meter]
// we recall that the total surface area required for a one tube pass exchanger was calculated above .
// we may thus compute the length of tube for this type of exchanger from 
L = A/(S*n);// [m]
// this length is greater than the allowable 2.438 m, so we must use more than one tube pass. when we increase the number of passes, we correspondingly increase the total surface area required because of the reduction in LMTD caused by the correction factor F.
// we next try two tube passes. from figure 10-8(page no.-532) 
F = 0.88;
A_total = q/(U*F*dTm);// [square meter]
// the number of tubes per pass is still 37 because of the velocity requirement. for the two pass exchanger the total surface area is now related to the length by
L1 = A_total/(2*S*n);// [m]
// this length is within the 2.438 m requirement, so the final design choice is 
printf("number of tubes per pass = %f",n);
printf("\n\n number of passes = 2");
printf("\n\n length of tube per pass = %f m",L1);

