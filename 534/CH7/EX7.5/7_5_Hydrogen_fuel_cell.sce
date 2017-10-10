clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 7.5   Page 431 \n'); //Example 7.5
// Convective Heat transfer to the canister and the additional heating needed

//Operating Conditions
v = 23;            //[m/s] Air velocity
Tsurr = 296;    //[K] Surrounding Air Temperature
L = .8;          //[m] Length of cylinder
Di = .1;         //[m] Diameter of cylinder
t = .005;      //[m] Thickness of cylinder

//Table A.4 Air Properties at T = 285K 
uv = 14.56*10^-6;         //[m^2/s] Kinematic Viscosity
k = 25.2*10^-3;           //[W/m.K] Thermal conductivity
Pr = .712;                //Prandtl Number
//Table A.1 AISI 316 Stainless steel Properties at T = 300K 
kss = 13.4;                //[W/m.K]Conductivity

pH2 = 1.01;        //[N]
Ti = -3550/(2.30*log10(pH2) - 12.9);
Eg = -(1.35*10^-4)*(29.5*10^6);

Re = v*(Di+2*t)/uv;        //Reynolds number
// Equation 7.54
Nu = .3+.62*Re^.5*Pr^.3334/[1+(.4/Pr)^.6668]^.25*[1+(Re/282000)^(5/8)]^.8;
h = Nu*k/(Di+2*t);

qconv = (Tsurr-Ti)/[(1/(%pi*L*(Di+2*t)*h))+(2.30*log10((Di+2*t)/Di)/(2*%pi*kss*L))];
printf("\n Additional Thermal Energy must be supplied to canister to mainatin steady-state operating temperatue %i W",-qconv-Eg);

//END