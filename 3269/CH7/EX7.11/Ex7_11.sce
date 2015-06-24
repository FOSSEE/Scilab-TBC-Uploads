// Example 7.11
clear all;
clc;

// Given data
H = 70;                                       // Height of square cylindrical reactor in cm
rho_wH = 0.065;                               // Total worth of a control rod at full height
rho_wx = 0.01;                                // Total worth of a control rod to be achieved 
// Let y-sin(y) = t
t = 2*%pi*(rho_wx/rho_wH);
// Using Newton Raphson method for solving the transcendental equation y - sin(y) -0.966 = 0
deff('y=f(y)','y = y-sin(y)-0.966')
deff('y=f1(y)','y = 1-cos(y)')
y0=0.5;             // Initial value
e = 0.00001;        // Relative error tolerance
for i=1:4
    y1 = y0-f(y0)/f1(y0)
    e1 = abs(y0-y1)
    y0 = y1;
    if abs(y0)<e then
        break;
    end
end
y = y1;                                         // The solution of transcendental equation
// Calculation
x = (y*H)/(2*%pi);
// Result
printf('\n The length of control rod to be inserted = %2.1f cm \n',x);
