clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 13.7   Page 841 \n')// Example 13.7

// Rate at which heat must be supplied 
// Temperature of the insulated surface

T1 = 1000      ;//[K] Temperature of Heated Surface
e1 = .8      ;// emissivity of Heated Surface
e2 = .8       ; // emissivity of Insulated Surface
r = .02        ;//[m] Radius of surface
Tm = 400        ;//[K] Temperature of surrounding air
m = .01        ;//[kg/s] Flow rate of surrounding air
p = 101325     ;//[Pa] Pressure of surrounding air
stfncnstt = 5.670*10^-8        ;//[W/m^2.K^4] Stefan Boltzman Constant
//Table A.4 Air Properties at 1 atm, 400 K
k = .0338        ;//[W/m.K] conductivity
u = 230*10^-7    ;//[kg/s.m] Viscosity
cp = 1014        ;//[J/kg] Specific heat
Pr = .69         ;// Prandtl Number

//Hydraulic Diameter
Dh = 2*%pi*r/(%pi+2)        ;//[m]
//Reynolds number
Re = m*Dh/(%pi*r^2/2)/u;
//View Factor
F12 = 1 ;

printf("\n As Reynolds Number is %i, Hence it is Turbulent flow inside a cylinder. Hence we will use Dittus-Boelter Equation",Re);

//From Dittus-Boelter Equation
Nu = .023*Re^.8*Pr^.4;
h = Nu*k/Dh;            //[W/m^2.K]

//From Equation 13.18 Heat Energy balance
//Newton Raphson
T2=600;        //Initial Assumption
while(1>0)
f=(stfncnstt*(T1^4 - T2^4)/((1-e1)/(e1*2*r)+1/(2*r*F12)+(1-e2)/(e2*%pi*r)) - h*%pi*r*(T2-Tm));
fd=(4*stfncnstt*( - T2^3)/((1-e1)/(e1*2*r)+1/(2*r*F12)+(1-e2)/(e2*%pi*r)) - h*%pi*r*(T2));
T2n=T2-f/fd;
if(stfncnstt*(T1^4 - T2n^4)/((1-e1)/(e1*2*r)+1/(2*r*F12)+(1-e2)/(e2*%pi*r)) - h*%pi*r*(T2n-Tm))<=.01
    break;
end;
T2=T2n;
end

//From energy Balance
q = h*%pi*r*(T2-Tm) + h*2*r*(T1-Tm)        ;//[W/m]

printf('\n Rate at which heat must be supplied per unit length of duct = %.2f W/m & Temperature of the insulated surface = %i K',q,T2);