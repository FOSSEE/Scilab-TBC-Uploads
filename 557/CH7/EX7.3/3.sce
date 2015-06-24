clc;funcprot(0); //Example 7.3

//Initializing the variables 
q = 10;
function[Z] = shi(x,y)  
    Z = (q/2/%pi)*(atan(y/(x-1))-atan(y/(x+1))) - 25*y;
endfunction
h = 0.0000001;
Vinf = 25;

//Calculations
x = poly(0,'x');
f = x^2 - 2/(5*%pi) -1; 
root = roots(f);
l = abs(root(1))+abs(root(2));
Ymax = 0.047;
width = 2*Ymax;
Vx = (shi(1-h,1)-shi(1-h,1-h))/h; // At x=1 the function atan is not defined hence taking x a little smaller.
Vy = -1*(shi(1-2*h,1)-shi(1-h,1))/h;  // At x=1 the function atan is not defined hence taking x a little smaller.

V = sqrt(Vx^2+Vy^2);
rho = poly(0,'rho');
dP = rho/2 *(V^2 - Vinf^2); //difference in pressure

disp(dP, 'Pressure Difference(N/m2) :',V, 'Velocity (m/s):', l, 'Length of Rankine Body(m ) :', width,'Width of Rankine Body (m):'  );