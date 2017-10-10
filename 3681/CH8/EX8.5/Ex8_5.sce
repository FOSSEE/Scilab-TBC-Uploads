// Calculating the inertia constant of the generator
clc;
disp('Example 8.5, Page No. = 8.14')
// Given Data
P = 500;// Power rating (in MW)
f = 50;// Frequency (in Hz)
J = 50*10^(3);// Moment of inertia (in kg-meter square)
pf = 0.85;// Power factor
// Calculation of the inertia constant of the generator
w = 2*%pi*f;// Angular speed (in rad/s)
Q = 500*10^(3)/pf;// kVA rating
H = (1/2)*J*w*w/(Q*10^(3));// Inertia constant (in seconds)
disp(H,'Inertia constant (seconds)=');
//in book answer is 4.2 seconds.  The answers vary due to round off error
