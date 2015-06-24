//clear//
clear;
clc;

//Example 5.1
// Given
mu = 0.004; //[kg/m-s]
D = 0.0779;// [m]
rho = 0.93*998; //[kg/m^3]
L = 45; //[m]

//For fittings, form Table 5.1
sum_Kf = 0.9 + 2*0.2;
//From Eq.(4.29), assuming alpha_a = 1, 
// since pa = pb, and Va_bar = 0
//A  = Vb_bar^2/2 + hf = g*(Za-Zb) 
A = 9.80665*(6+9); //[m^2/s^2]
//Using Fig 5.9
f = 0.0055;
//Using Eq.(5.68), There is no exapnsion loss and Ke =  0.
//From Eq.(5.66), since Sa is very lage, Kc = 0.4. Hence
Vb_bar = sqrt(294.2/(2.7+2311*f));//[m/s]
//From Appendix 5, cross sectional area of the pipe
S = 0.00477; //[m^2]
flow_rate  = S*Vb_bar*3600 //[m^3/hr]
