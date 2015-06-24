clc; funcprot(0);
//Example 25.8

//Initializing the variables
f = 0.008;
T = 290;
L = 750;
Dt = 9;         // Diameter Tunnel
Df = 0.63;        // Diameter fan
K1 = 0.98;
K2 = 0.92;
Vo = 27.9;
n = 10;

//Calculations
alpha = (Df/Dt)^2;
// equation 25.20 becomes when E = 1 nad C = 0
W = poly(0,'W' );
Equation = 2*K1* (alpha*W^2 +(n-1)*alpha*W*(W-1)) - 4*f*L/Dt -1;
omega  = roots(Equation);
     for(i = 1:length(omega))
         if(real(omega(i))>0) then // since omega is always positive and real
              w = omega(i);
         end,
     end  
Vt = Vo/w;
disp(Vt, "Tunnel Velocity(m/s) :");