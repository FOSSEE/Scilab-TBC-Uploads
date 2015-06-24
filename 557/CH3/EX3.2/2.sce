clc;funcprot(0);
//Example 3.2 

//Initializing the variables
w = 1.8;     //Width of plate
h1 = 5;        //Height of plate and water in upstream
h2 = 1.5;      //Height of water in downstream
rho = 1000;
g = 9.81 ;     //Acceleration due to gravity

//Calculations
function[F]=waterForce(area,meanHeight)
    F = rho * g * area * meanHeight;
endfunction

P = waterForce(w*h1,h1/2)-waterForce(w*h2,h2/2); // Resultant force on gate 
x = (waterForce(w*h1,h1/2)*(h1/3) - waterForce(w*h2,h2/2)*(h2/3))/P; // point of action of p from bottom
R = P/(2*sind(20));       // Total Reaction force
Rt = 1.18*R/4.8;       //Reaction on Top
Rb = R - Rt ;         //Reaction at bottom

disp(Rb/1000, "Reaction at bottom (kN):",Rt/1000, "Reaction at top(kN) :");