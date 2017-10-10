clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 7.4   Page 428 \n'); //Example 7.4
// Convection Coefficient associated with operating conditions
// Convection Coefficient from an appropriate correlation

//Operating Conditions
v = 10;            //[m/s] Air velocity
Tsurr = 26.2+273;    //[K] Surrounding Air Temperature
P = 46;            // [W] Power dissipation
L = .094;          //[m] Length of cylinder
D = .0127;         //[m] Diameter of cylinder
Ts = 128.4+273;       //[K] Surface Temp of water
q = 46-.15*46;        //[W] Actual power dissipation without the 15% loss

//Table A.4 Air Properties at T = 300K 
uv = 15.89*10^-6;         //[m^2/s] Kinematic Viscosity
k = 26.3*10^-3;           //[W/m.K] Thermal conductivity
Pr = .707;                //Prandtl Number
//Table A.4 Air Properties at T = 401K 
Prs = .690;                //Prandtl Number

A = %pi*D*L;
h = q/(A*(Ts-Tsurr));

Re = v*D/uv;        //Reynolds number
//Using Zukauskas Relation, Equation 7.53
C = .26;
m = .6;
n = .37;
Nu = C*Re^m*Pr^n*(Pr/Prs)^.25;
havg = Nu*k/D;

printf("\n Convection Coefficient associated with operating conditions %i W/m^2.K. \n Reynolds Number is %i. Hence taking suitable corresponding data from Table 7.4.\n Convection Coefficient from an appropriate Zukauskas correlation %i W/m^2.K",h,Re,havg);

//END