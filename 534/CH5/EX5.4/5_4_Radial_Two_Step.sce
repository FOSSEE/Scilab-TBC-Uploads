clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 5.4   Page 278 \n'); //Example 5.4
// Radial System with Convection

//Operating Conditions

h = 500;          //[W/m^2.K] Heat Convection coefficientat inner surface
k = 63.9;         //[W/m.K] Thermal Conductivity 
rho = 7832;        //[kg/m^3] Density
c = 434;            //[J/kg.K]  Specific Heat
alpha = 18.8*10^-6;            //[m^2/s]
L = 40*10^-3;      //[m] Metre
Ti = -20+273;        //[K] Initial Temp
Tsurr = 60+273;     //[K] Temp of oil
t = 8*60 ;          //[sec] time
D = 1 ;       //[m] Diameter of pipe

//Using eqn 5.10 and 5.12
Bi = h*L/k;
Fo = alpha*t/L^2;

//From Table 5.1 at this Bi
C1 = 1.047;
eta = 0.531;
theta0=C1*exp(-eta^2*Fo);
T = Tsurr+theta0*(Ti-Tsurr);

//Using eqn 5.40b
x=1;
theta = theta0*cos(eta);
Tl = Tsurr + (Ti-Tsurr)*theta;
q = h*[Tl - Tsurr];

//Using Eqn 5.44, 5.46 and Vol per unit length V = pi*D*L
Q = [1-(sin(eta)/eta)*theta0]*rho*c*%pi*D*L*(Ti-Tsurr);

printf("\n (a) After 8 min Biot number = %.2f and Fourier Numer = %.2f \n\n (b) Temperature of exterior pipe surface after 8 min = %i degC \n\n (c) Heat Flux to the wall at 8 min = %i W/m^2 \n\n (d) Energy transferred to pipe per unit length after 8 min = %.2e J/m",Bi,Fo, T-273,q,Q);

//END