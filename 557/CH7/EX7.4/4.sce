funcprot(0);clc; //Example 7.4

//Initializing the variables
a = 0.02;
r = 0.05;
V0 = 1;
x = 135; // Theta
function[Z] = shi(r,x)  
    Z = V0*sind(x)*(r - ((a^2)/r));
endfunction
h = 0.0001;

//Calculations
Vr = 57*(shi(r,x+h)-shi(r,x))/(r*h);
Vx = -1*(shi(r+h,x)-shi(r,x))/h;

disp(Vr, 'Radial Velocity (m/s):',Vx, 'Normal component of velocity (m/s):');