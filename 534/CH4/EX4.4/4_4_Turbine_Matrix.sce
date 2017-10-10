clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 4.4   Page 230 \n'); //Example 4.4
// Temperature Field and Rate of Heat Transfer

//Operating Conditions

ho = 1000;          //[W/m^2.K] Heat Convection coefficient
hi = 200;          //[W/m^2.K] Heat Convection coefficient
Ti = 400;        //[K] Temp of Air
Tg = 1700;     //[K] Temp of Gas
h = 10 ;         //[W/m^2.K] Heat Convection coefficient

A = 2*6*10^-6 ;   //[m^2] Cross section of each Channel
x = .004 ;     //[m] Spacing between joints
t = .006;      //[m] Thickness
k = 25;         //[W/m.K] Thermal Conductivity of Blade
delx = .001 ;     //[m]
dely = .001 ;     //[m]

//Applying Eqn 4.42 and 4.48
A = [-(2+ho*delx/k) 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 
     1 -2*(2+ho*delx/k) 1 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0;
     0 1 -2*(2+ho*delx/k) 1 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0;
     0 0 1 -2*(2+ho*delx/k) 1 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0;
     0 0 0 1 -2*(2+ho*delx/k) 1 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0;
     0 0 0 0 1 -(2+ho*delx/k) 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0;
     1 0 0 0 0 0 -4 2 0 0 0 0 1 0 0 0 0 0 0 0 0;
     0 1 0 0 0 0 1 -4 1 0 0 0 0 1 0 0 0 0 0 0 0;
     0 0 1 0 0 0 0 1 -4 1 0 0 0 0 1 0 0 0 0 0 0;
     0 0 0 1 0 0 0 0 1 -4 1 0 0 0 0 1 0 0 0 0 0;
     0 0 0 0 1 0 0 0 0 1 -4 1 0 0 0 0 1 0 0 0 0;
     0 0 0 0 0 1 0 0 0 0 2 -4 0 0 0 0 0 1 0 0 0;
     0 0 0 0 0 0 1 0 0 0 0 0 -4 2 0 0 0 0 1 0 0;
     0 0 0 0 0 0 0 1 0 0 0 0 1 -4 1 0 0 0 0 1 0;
     0 0 0 0 0 0 0 0 2 0 0 0 0 2 -2*(3+hi*delx/k) 1 0 0 0 0 1;
     0 0 0 0 0 0 0 0 0 2 0 0 0 0 1 -2*(2+hi*delx/k) 1 0 0 0 0;
     0 0 0 0 0 0 0 0 0 0 2 0 0 0 0 1 -2*(2+hi*delx/k) 1 0 0 0;
     0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 -(2+hi*delx/k) 0 0 0;
     0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 -2 1 0;
     0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 0 0 1 -4 1;
     0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 -(2+hi*delx/k)];
     
C = [-ho*delx*Tg/k; 
     -2*ho*delx*Tg/k;
     -2*ho*delx*Tg/k;
     -2*ho*delx*Tg/k;
     -2*ho*delx*Tg/k;
     -ho*delx*Tg/k;
     0;
     0;
     0;
     0;
     0;
     0;
     0;
     0;
     -2*hi*delx*Ti/k;
     -2*hi*delx*Ti/k;
     -2*hi*delx*Ti/k;
     -hi*delx*Ti/k;
     0;
     0;
     -hi*delx*Ti/k];

T = inv(A)*C;

printf("\n Temp Distribution = ");
printf("\n    %.1f K ", T);

q = 4*ho*[(delx/2)*(Tg-T(1))+delx*(Tg-T(2))+delx*(Tg-T(3))+ delx*(Tg-T(4))+delx*(Tg-T(5))+delx*(Tg-T(6))/2];
printf("\n\n Heat rate Transfer %.1f W/m ", q);
//END