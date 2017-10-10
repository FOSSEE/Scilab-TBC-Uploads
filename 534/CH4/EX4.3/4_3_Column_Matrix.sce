clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 4.3   Page 224 \n'); //Example 4.2
// Temperature Distribution and Heat rate per unit length

Ts = 500;        //[K] Temp of surface
Tsurr = 300;     //[K] Temp of surrounding Air
h = 10;          //[W/m^2.K] Heat Convection soefficient
//Support Column
delx = .25;      //[m]
dely = .25;      //[m]
k = 1;         //[W/m.K] From Table A.3, Fireclay Brick at T = 478K

//Applying Eqn 4.42 and 4.48
A = [-4 1 1 0 0 0 0 0; 
     2 -4 0 1 0 0 0 0;
     1 0 -4 1 1 0 0 0;
     0 1 2 -4 0 1 0 0;
     0 0 1 0 -4 1 1 0;
     0 0 0 1 2 -4 0 1;
     0 0 0 0 2 0 -9 1;
     0 0 0 0 0 2 2 -9 ];
     
C = [-1000; -500; -500; 0; -500; 0; -2000; -1500 ];

T = inv(A)*C;

printf("\n Temp Distribution = ");
printf("\n    %.2f K ", T);

q = 2*h*[(delx/2)*(Ts-Tsurr)+delx*(T(7)-Tsurr)+delx*(T(8)-Tsurr)/2];
printf("\n\n Heat rate from column to the airstream %.1f W/m ", q);
//END