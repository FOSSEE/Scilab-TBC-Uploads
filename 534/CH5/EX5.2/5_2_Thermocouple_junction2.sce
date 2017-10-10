clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 5.2   Page 265 \n'); //Example 5.2
// Steady State Temperature of junction
// Time Required for thermocouple to reach a temp that is within 1 degc of its steady-state value

//Operating Conditions

h = 400;          //[W/m^2.K] Heat Convection coefficient
k = 20;         //[W/m.K] Thermal Conductivity of Blade
c = 400;        //[J/kg.K] Specific Heat
e = .9;        //Absorptivity
rho = 8500;      //[kg/m^3] Density
Ti = 25+273;        //[K] Temp of Air
Tsurr = 400+273;     //[K] Temp of duct wall
Tg = 200+273;     //[K] Temp of Gas Stream
TimeConstt = 1;      //[sec]
stfncnstt=5.67*10^(-8);    // [W/m^2.K^4] - Stefan Boltzmann Constant 

//From Eqn 5.7
D = 6*h*TimeConstt/(rho*c);
As = %pi*D^2;
V = %pi*D^3/6;

//Balancing Energy on thermocouple Junction
//Newton Raphson method for 4th order eqn
T=500;
while(1>0)
f=(e*stfncnstt*(Tsurr^4-T^4)-(h*(T-Tg)));
fd=(-3*e*stfncnstt*T^3)-h;
Tn=T-f/fd;
if((e*stfncnstt*(Tsurr^4-Tn^4)-(h*(Tn-Tg)))<=.01)
    break;
end;
T=Tn;
end
printf("\n (a) Steady State Temperature of junction = %.2f degC\n",T-273);

//Using Eqn 5.15 and Integrating the ODE
// Integration of the differential equation
// dT/dt=-A*[h*(T-Tg)+e*stefncnstt*(T^4-Tsurr^4)]/(rho*V*c) , T(0)=25+273, and finds the minimum time t such that T(t)=217.7+273.15
deff("[Tdot]=f(t,T)","Tdot=-As*[h*(T-Tg)+e*stfncnstt*(T^4-Tsurr^4)]/(rho*V*c)");
deff("[z]=g(t,T)","z=T-217.7-273");

T0=25+273;ng=1;
[T,rd]=ode("roots",T0,0,217.7+273,f,ng,g);
printf("\n (b) Time Required for thermocouple to reach a temp that is within 1 degc of its steady-state value = %.2f s\n",rd(1));

//END