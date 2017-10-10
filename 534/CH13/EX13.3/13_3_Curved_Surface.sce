clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 13.3   Page 826 \n')// Example 13.3

// Net rate of Heat transfer to the absorber surface

L = 10        ;//[m] Collector length = Heater Length
T2 = 600      ;//[K] Temperature of curved surface
A2 = 15      ;//[m^2] Area of curved surface
e2 = .5      ;// emissivity of curved surface
stfncnstt = 5.67*10^-8;		//[W/m^2.K^4] Stefan-Boltzmann constant
T1 = 1000        ;//[K] Temperature of heater
A1 = 10          ;//[m^2] area of heater
e1 = .9          ;// emissivity of heater
W = 1            ;//[m] Width of heater
H = 1            ;//[m] Height
T3 = 300         ;//[K] Temperature of surrounding
e3 = 1           ;// emissivity of surrounding

J3 = stfncnstt*T3^4;        //[W/m^2]
//From Figure 13.4 or Table 13.2, with Y/L = 10 and X/L =1
F12 = .39;
F13 = 1 - F12;        //By Summation Rule
//For a hypothetical surface A2h
A2h = L*W;
F2h3 = F13;        //By Symmetry
F23 = A2h/A2*F13;         //By reciprocity
Eb1 = stfncnstt*T1^4;    //[W/m^2]
Eb2 = stfncnstt*T2^4;    //[W/m^2]
//Radiation network analysis at Node corresponding 1
//-10J1 + 0.39J2 = -510582
//.26J1 - 1.67J2 = -7536
//Solving above equations
A = [-10 .39;
     .26 -1.67];
B = [-510582;
     -7536];

X = inv(A)*B;

q2 = (Eb2 - X(2))/(1-e2)*(e2*A2);

printf('\n Net Heat transfer rate to the absorber is = %.1f kW',q2/1000);