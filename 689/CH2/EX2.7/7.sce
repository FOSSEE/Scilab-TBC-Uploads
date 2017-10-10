//Example 2.7  Uniform Flow Plus a Source

// Initialisation of variables
U = 100;
m = 600;
P0 = 2116.2;
rho = 0.002378;
function[z] = shi(x,y)
    z = -U*y + (m/(2*%pi)*atan(y/x));
endfunction

// Calculations
h = 0.000001;
u = (shi(h,1.5+h)-shi(h,1.5))/h  ;      // Partial derivative is ts taken in just the neighbourhood of 0 as if we take absolute zero then there will be a divide by zero error.
v = -(shi(2*h,1.5)-shi(h,1.5))/h ;       
Velo = sqrt(u^2+v^2);
P = P0 - (rho/2)*(Velo^2-U^2);

//Results 
disp(P,"Pressure at P(0, 1.5) (lb/sq-ft)");

