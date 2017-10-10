//Example 2.8  Source Plus Sink Plus Uniform Flow

// Initialisation of variables

U = -100;
m = 314.2;
P0 = 2116.2;
rho = 0.002378;
c = 1;
x = 1.05;
y = 0.6;
P0 = 2116.2;
function[z] = shi(x,y)
    z = -U*y + (m/(2*%pi)*atan(2*c*y/(x^2-y^2-c^2)));
endfunction

// Calculations
h = 0.00001; 
u = (shi(x,y+h)-shi(x,y))/h  ; 
v = -(shi(x+h,y)-shi(x,y))/h ;       
Velo = sqrt(u^2+v^2);
P = P0 - (rho/2)*(Velo^2-U^2);

//Results 
disp(P,"Pressure at P(1.05, 0.6) (lb/sq-ft)");

