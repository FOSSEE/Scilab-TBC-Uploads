// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 4 : OVERHEAD POWER TRANSMISSION

// EXAMPLE : 4.8 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
V_RL_L = 138*10^3 ; // transmission line voltage in V
R = 0.1858 // Line constant in Ω/mi
f = 60 // frequency in Hertz
L = 2.60*10^-3 // Line constant in H/mi
C = 0.012*10^-6 // Line constant in F/mi
pf = 0.85 // Lagging power factor
P = 50*10^6 // load in VA
l = 150 // length of 3-Φ transmission line in mi

// CALCULATIONS
// For case (a)
z = R + %i*2*%pi*f*L ; // Impedance per unit length in Ω/mi
y = %i*2*%pi*C*f ; // Admittance per unit length in S/mi
g = sqrt(y*z) ; // Propagation constant of line per unit length

// For case (b)
lamda = (2 * %pi)/imag(g) ; // Wavelength of propagation in mi
V = lamda * f ; // Velocity of propagation in mi/sec

 // For case (c)
Z_C = sqrt(z/y) ;
V_R = V_RL_L/sqrt(3) ;
theta_R = acosd(pf) ; 
I_R = P/(sqrt(3)*V_RL_L) * ( cosd(theta_R) - %i*sind(theta_R) ) ; // Receiving end current in A
V_R_incident = (1/2)*(V_R + I_R*Z_C) ; // Incident voltage at receiving end in V
V_R_reflected = (1/2)*(V_R - I_R*Z_C) ; // Reflected voltage at receiving end in V

// For case (d)
V_RL_N = V_R_incident + V_R_reflected ; // Line-to-neutral voltage at receiving end in V
V_RL_L = sqrt(3)*V_RL_N // Receiving end Line voltage in V

// For case (e)
g_l = real(g) * l + %i * imag(g) * l ; // Propagation constant of line
a = real(g) ; // a = α is the attenuation constant
b = imag(g) ; // b = β is the phase constant
V_S_incident = (1/2) * (V_R+I_R*Z_C) * exp(a*l) * exp(%i*b*l) ; // Incident voltage at sending end in V
V_S_reflected = (1/2) * (V_R-I_R*Z_C) * exp(-a*l) * exp(%i*(-b)*l) ; // Reflected voltage at sending end in V

// For case (f)
V_SL_N = V_S_incident + V_S_reflected ; // Line-to-neutral voltage at sending end in V
V_SL_L = sqrt(3)*V_SL_N ; // sending end Line voltage in V

// DISPLAY RESULTS
disp("EXAMPLE : 4.8 : SOLUTION :-") ;
printf("\n (a) Attenuation constant , α = %.4f Np/mi \n",real(g)) ;
printf("\n     Phase change constant, β = %.4f rad/mi \n",imag(g)) ;
printf("\n (b) Wavelength of propagation = %.2f mi \n",lamda) ;
printf("\n     velocity of propagation = %.2f mi/s \n",V) ;
printf("\n (c) Incident voltage receiving end , V_R(incident) = %.2f<%.2f V \n",abs(V_R_incident),atan(imag(V_R_incident),real(V_R_incident))*(180/%pi));
printf("\n     Receiving end reflected voltage , V_R(reflected) = %.2f<%.2f V \n",abs(V_R_reflected),atan(imag(V_R_reflected),real(V_R_reflected))*(180/%pi)) ;
printf("\n (d) Line voltage at receiving end , V_RL_L = %d V \n",V_RL_L) ;
printf("\n (e) Incident voltage at sending end , V_S(incident) = %.2f<%.2f V \n",abs(V_S_incident),atan(imag(V_S_incident),real(V_S_incident))*(180/%pi)) ;
printf("\n     Reflected voltage at sending end , V_S(reflected) = %.2f<%.2f V \n",abs(V_S_reflected),atan(imag(V_S_reflected),real(V_S_reflected))*(180/%pi)) ;
printf("\n (f) Line voltage at sending end , V_SL_L = %.2f V \n",abs(V_SL_L)) ;
