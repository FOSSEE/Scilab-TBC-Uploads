clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 5
// Heat Transfer by Forced Convection


// Example 5.3(i)
// Page 215
printf("Example 5.3(ii), Page 215 \n\n")

D = 0.015 ; // [m]
V = 1 ; // [m/s]
Tw = 90 ; // [degree C]
Tmi = 50 ; // [degree C] 
Tmo = 65 ; // [degree C]

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

// (ii)
printf("\nTrial and error method \n");

// Trial 1
printf("Trial 1\n");
printf("Assumed value of Tmo = 70 degree C\n");
T_mo = 70 ; // [degree C]
T_b = 60 ; // [degree C]

k1 = 0.659 ; // [W/m K]
rho1 = 983.2 ; // [kg/m^3]
v1 = 0.478 * 10^-6 ; // [m^2/s]
Cp1 = 4179 ; // [J/kg K]
Pr1 = 2.98 ;

Re1 = 4*m_dot/(%pi*D*rho1*v1);

// From Blasius eqn (4.6.4a), we get
f1 = 0.005928;

// Substituting this value into the Gnielinski Eqn
Nu_d = 154.97;
h = Nu_d*k1/D ; // [W/m^2 K]

// from eqn 5.3.3, we get
Tmo1 = 73.4 ;  // [degree C]
printf("Value of Tmo obtained = 73.4 degree C\n");

// Trial 2
printf("Trial 2\n");
printf("Assume Tmo = 73.4 degree C\n");
printf("Value of Tmo obtained = 73.6 degree C which is in reasonably close agreement with assumed value.\n")
