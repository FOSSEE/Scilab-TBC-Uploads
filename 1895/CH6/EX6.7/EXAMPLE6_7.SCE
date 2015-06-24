//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 6
//NOISE
clear all;
clc;
printf("EXAMPLE 6.7(PAGENO 295)");

//given
T = 273 + 17//temperature in kelvin
Q = 10//quality factor
c  = 10*10^-12//capacitance
f_r = 100*10^6//resonate frequency
k = 1.38*10^-23//boltzman's constant

//calculations
delta_f = f_r/Q//bandwidth of the tuned circuit
w = 2*%pi*f_r;//angular frequency
R = 1/(Q*w*c);//resistance
V_no = sqrt(4*k*Q^2*T*delta_f*R) //output voltage

//results
printf("\n\nOutput voltge = %.10f V",V_no);
