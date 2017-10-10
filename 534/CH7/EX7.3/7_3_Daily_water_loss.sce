clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 7.3   Page 417 \n'); //Example 7.2
// Daily Water Loss

//Operating Conditions
v = 2;            //[m/s] Air velocity
Tsurr = 25+273;    //[K] Surrounding Air Temperature
H = .5;            // Humidity
w = 6;            //[m] Width of pool
L1 = 12;          //[m] Length of pool
e = 1.5;         //[m] Deck Wide
Ts = 25+273;       //[K] Surface Temp of water

//Table A.4 Air Properties at T = 298K 
uv = 15.7*10^-6;         //[m^2/s] Kinematic Viscosity
//Table A.8 Water vapor-Air Properties at T = 298K 
Dab = .26*10^-4;         //[m^2/s] Diffusion Coefficient
Sc = uv/Dab;
//Table A.6 Air Properties at T = 298K 
rho = .0226;               //[kg/m^3]

L = L1+e;
Re = v*L/uv;        //Reynolds number

//Equation 7.41 yields
ShLe = .037*Re^.8*Sc^.3334;
//Equation 7.44
p = 8;        //Turbulent Flow
ShL = (L/(L-e))*ShLe*[1-(e/L)^((p+1)/(p+2))]^(p/(p+1));

hmL = ShL*(Dab/L);
n = hmL*(L1*w)*rho*(1-H);

printf("\n Reynolds Number is %.2e. Hence for turbulent Flow p = 8 in Equation 7.44.\n Daily Water Loss due to evaporation is %i kg/day",Re,n*86400);

//END