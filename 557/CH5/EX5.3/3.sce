clc;funcprot(0);
//Example 5.3 

//Initializing the variables 
x = 60;       //Angle of deflection
rho = 1000;     // Density of liquid
V1 = 30;        //Acceleration of fluid
V2 = 25;
m = .8;         //Discharge through A

//Calculations
function[R] = Reaction(Vin , Vout)
    R = m*(Vin -Vout) ;
endfunction

Rx = Reaction(V1,V2*cosd(x));
Ry = -Reaction(0,V2*sind(x));
disp(Rx,"Reaction in X-direction (N):");
disp(Ry, "Reaction in Y-direction (N) :");
disp(sqrt(Rx^2 +Ry^2), "Net Reaction (N):");
disp(atand(Ry/Rx),"Inclination of Resultant Force with x-direction (Degree):");