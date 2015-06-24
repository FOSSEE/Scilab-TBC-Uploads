clc;funcprot(0);
//Example  3.6

//Initializing the variables
D = 1.8;     // Diameter of buoy
H = 1.2;       //Height of buoy
W = 10*10^3;   //Weight of buoy
L = 2*10^3;    //Load
G = 0.45;      // Center of gravity
rho = 1025;     //Density of sea water
g = 9.81;      //Acceleration due to gravity

//Calculations
Z = 4*(W+L)/(rho*g*%pi*D^2);         // Depth of Immersion
BG# = (%pi*D^4/64)/(%pi*D^2*Z/4);
Z# = 0.5*Z +BG#;                   // Position of combined center of gravity
Z1 = ((W+L)*Z#-0.45*W)/L;         //Maximum height of load above bottom

disp(Z1,"Maximum height of center of gravity above bottom(m) :");