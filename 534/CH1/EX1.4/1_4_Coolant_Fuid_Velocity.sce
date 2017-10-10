clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 1.4   Page 20 \n')// Example 1.4
// Find Velocity of Coolant Fluid

Ts = 56.4+273.15;  //[K] - Surface Temperature of Steam
Tsurr = 25+273.15; //[K] - Temperature of Surroundings
e=.88; //  Emissivity of Surface

//As h=(10.9*V^.8)[W/m^2.k] - Thermal Convectivity from surface to air
stfncnstt=5.67*10^(-8);    // [W/m^2.K^4] - Stefan Boltzmann Constant 

A=2*.05*.05;    // [m^2] Area for Heat transfer i.e. both surfaces

E = 11.25;    //[W] Net heat to be removed by cooling air

Qrad = e*stfncnstt*A*(Ts^4-Tsurr^4);

//Using Eq 1.10 Total Rate of Heat Transfer Q  = Q by convection + Q by radiation
Qconv = E - Qrad;//[W] 

//As Qconv = h*A*(Ts-Tsurr) & h=10.9 Ws^(.8)/m^(-.8)K.V^(.8)

V = [Qconv/(10.9*A*(Ts-Tsurr))]^(1/0.8);

printf("\n\n Velocity of Cooling Air flowing= %.2f m/s",V);
//END



