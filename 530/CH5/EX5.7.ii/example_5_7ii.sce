clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 5
// Heat Transfer by Forced Convection


// Example 5.7(ii)
// Page 241
printf("Example 5.7(ii), Page 241 \n \n");

D = 0.0125 ; // [m]
ST = 1.5*D ;
SL = 1.5*D ;
V_inf = 2 ; // [m/s]
N = 5;
Tw = 70; // [degree C]
Tmi = 30; // [degree C]
L = 1; // [m]

rho = 1.165 ; // [kg/m^3]
v = 16.00 *10^-6 ; // [m^2/s]
Cp = 1.005*1000 ; // [J/kg K]
k = 0.0267 ; // [W/m K]
Pr = 0.701;

// From eqn 5.10.2
Vmax = ST/(SL-D)*V_inf ; // [m/s]
Re = Vmax*D/v ;

// From fig 5.15
f = 0.37/4;
// Also, tube arrangement is square
X = 1;
// From eqn 5.10.6
delta_P = 4*f*N*X*(rho*Vmax^2)/2 ; // [N/m^2]

// At 70 degree C
Pr1 = 0.694 ; 
// From table 5.4 and 5.5

C1 = 0.27;
m = 0.63;
C2 = 0.93;

// Substituting in Eqn 5.10.5
Nu = C1*C2*(Re^m)*(Pr^0.36)*(Pr/Pr1)^(1/4);
h = Nu*k/D; // [W/m^2 K]

// For 1 m long tube
m_dot = rho*(10*1.5*D*1)*2; // [kg/s]

// Substituting m_dot in 5.3.4 and solving, we get
function[f]=temp(Tmo)
    f(1) = h*(%pi*D*L)*50*[(Tw-Tmi)-(Tw-Tmo(1))]/[log((Tw-Tmi)/(Tw-Tmo(1)))]-m_dot*Cp*(Tmo(1)-Tmi) ;
    // h*(%pi*D*L)*N*((Tw-Tmi)-(Tw-Tmo))/log[(Tw-Tmi)/(Tw-Tmo)] - m_dot*Cp*(Tmo - Tmi);
    funcprot(0);
endfunction

Tmo = 40; // Initial assumed value for fsolve function
y = fsolve(Tmo,temp);
printf("Tmo = %f \n",y);

printf("(ii) Exit temperature of air = %f degree C \n",y);