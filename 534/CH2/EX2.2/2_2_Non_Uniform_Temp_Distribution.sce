clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 2.2   Page 75 \n')//Example 2.2
// Analyze a Situation of Non-Uniform Temperature Distribution
//T(x) = a + bx +cx^2   T-degC & x-meter

a = 900;    //[degC]
b = -300;   //[degC/m]
c = -50;    //[degC/m^2]

q = 1000;    //[W/m^2.K] - Unifrom heat Generation
A = 10 ;      //[m^2]    - Wall Area
//Properties of Wall
p = 1600;    //[kg/m^3]  - Density
k = 40;      //[W/m]    - Thermal Conductivity
Cp = 4000;   //[J/kg.K]  - Specific Heat
L = 1;      //[m]    - Length of wall

//(i) Rate of Heat Transfer entering the wall and leaving the wall
// From Eqn 2.1
// qin = -kA(dT/dx)|x=0 = -kA(b)

qin= - b*k*A;

// Similarly
// qout = -kA(dT/dx)|x=L = -kA(b+2cx)|x=L

qout= - k*A*(b+2*c*L);

printf("\n (i) Rate of Heat Transfer entering the wall = %i W \n     And leaving the wall = %i W \n", qin, qout);

//(ii) Rate of change Of Energy Storage in Wall E`st
// Applying Overall Energy Balance across the Wall
//E`st = E`in + E`g + E`out = qin + q`AL - qout
Est = qin + q*A*L - qout;

printf("\n (ii) Rate of change Of Energy Storage in Wall = %i W\n",Est);

//(iii) Time rate of Temperature change at x= 0, 0.25 and .5m
//Using Eqn 2.19
// T`= dT/dt = (k/p*Cp)*d(dT/dx)/dx + q`/p*Cp
//As d(dT/dx)/dx = d(b + 2cx)/dx = 2c - Independent of x
T = (k/(p*Cp))*(2*c)+ q/(p*Cp);
printf("\n (iii) Time rate of Temperature change independent of x = %f degC/s\n",T);

//END
