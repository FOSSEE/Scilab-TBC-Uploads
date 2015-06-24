//example 5.7
//Calculate the rate of heat loss by the combined free and forced convection.
//Given
Ts=60              //C, surface temp
To=30              //C, bulk temp.
d=0.06             //m, diameter  of pipe
l=1                //m, length
Tm=(Ts+To)/2
//for air at Tm
rho=1.105                     //kg/m^3, density
cp=0.24                       //kcal/kg C. specific heat
mu=1.95*10^-5                 //kg/m s. viscosity
P=0.7                         //Prandtl no. 
kv=1.85*10^-5                     //m^2/s, kinetic viscosity
k=0.0241                      //kcal/f m C, thermal conductivity
beeta=(1/(Tm+273))                  //K^-1. coefficient of volumetric expension
V=0.3                         //m/s, velocity
g=9.8                         //m/s^2, gravitational constant
//Calculation of nusslet no.
Rad=g*beeta*(Ts-To)*d^3*P/(kv^2)      //Rayleigh no.
//from eq. 5.9
Nufree=(0.60+(0.387*Rad^(1/6))/(1+(0.559/P)^(9/16))^(8/27))^2
//calculation of forced convection nusslet no.
//from eq. 4.19
Re=d*V/(kv)
Nuforced=0.3+(0.62*Re^(1/2)*P^(1/3)/(1+(0.4/P)^(2/3))^(1/4))*(1+(Re/(2.82*10^5))^(5/8))^(4/5)
Nu=(Nuforced^3+Nufree^3)^(1/3)       //nusslet no. for mixed convection
//Nu=h*d/k
h=Nu*k/d                     //kcal/h m^2 C, heat transfer corfficient
q=h*%pi*d*l*(Ts-To)
printf("the rate of heat loss per meter length is %f kcal/h",q)
