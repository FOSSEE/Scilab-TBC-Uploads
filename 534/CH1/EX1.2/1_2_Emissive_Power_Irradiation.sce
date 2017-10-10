clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 1.2   Page 11 \n')// Example 1.2
// Find a) Emissive Power & Irradiation b)Total Heat Loss per unit length 

d=.07;    //[m] - Outside Diameter of Pipe
Ts = 200+273.15;  //[K] - Surface Temperature of Steam
Tsurr = 25+273.15; //[K] - Temperature outside the pipe
e=.8; //  Emissivity of Surface
h=15;    //[W/m^2.k] - Thermal Convectivity from surface to air
stfncnstt=5.67*10^(-8);    // [W/m^2.K^4] - Stefan Boltzmann Constant 
//Using Eq 1.5 
E = e*stfncnstt*Ts^4;    //[W/m^2] - Emissive Power
G = stfncnstt*Tsurr^4;    //[W/m^2] - Irradiation falling on surface

printf("\n (a) Surface Emissive Power = %.2f W/m^2",E);
printf("\n     Irradiation Falling on Surface = %.2f W/m^2",G);

//Using Eq 1.10 Total Rate of Heat Transfer Q  = Q by convection + Q by radiation
q = h*(%pi*d)*(Ts-Tsurr)+e*(%pi*d)*stfncnstt*(Ts^4-Tsurr^4);          //[W] 

printf("\n\n (b) Total Heat Loss per unit Length of Pipe= %.2f W",q);
//END



