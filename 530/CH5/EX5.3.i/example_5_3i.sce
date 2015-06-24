clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 5
// Heat Transfer by Forced Convection


// Example 5.3(i)
// Page 215
printf("Example 5.3(i), Page 215 \n\n")

D = 0.015 ; // [m]
V = 1 ; // [m/s]
Tw = 90 ; // [degree C]
Tmi = 50 ; // [degree C] 
Tmo = 65 ; // [degree C]

// (i)

// From Table A.1
k = 0.656 ; // [W/m K]
rho = 984.4 ; // [kg/m^3]
v = 0.497 * 10^-6 ; // [m^2/s]
Cp = 4178 ; // [J/kg K]
Pr = 3.12 ;
rho_in = 988.1 ; // [kg/m^3]

m_dot = %pi*(D^2)*rho_in*V/4 ; // [kg/s]

Re = 4*m_dot/(%pi*D*rho*v) ;

// Using eqn 5.3.2 and 4.6.4a
f = 0.079*(Re)^-0.25 ;

Nu = (f/2)*(Re-1000)*Pr/[1+12.7*(f/2)^(1/2)*((Pr^(2/3))-1)];
h = Nu*k/D; // [W/m^2 K]

// From the energy equation, extracting the value of L
L = m_dot*Cp*(Tmo-Tmi)*[log((Tw-Tmi)/(Tw-Tmo))]/[((Tw-Tmi)-(Tw-Tmo))*h*D*%pi]; // [m]

printf("The length of tube if the exit water temperature is 65 degree C = %f m\n",L);
