clc;
clear all;
disp("Steady state conduction")
disp("thickness of wall : L")
disp("temperature of surfaces : t1, t2")
disp("relation of variation of thermal conductivity : k= k0*t^2")
disp("i) Expression for heat conduction through wall")
disp("Heat conduction through plane wall is given by Q = -k*A*dt/dx")
disp("Heat conduction through plane wall is given by Q = -k0*t^2*A*dt/dx")
disp("By rearranging and integrating within limits t1 to t2, we get :") 
disp("Required expression, Q =k0*A(t1^3-t2^3)/(3*L)")

disp("ii) Temperature at which mean thermal conductivity be evaluated in order to get the same heat flow by its substitution in simplified Fourier''s equation")
disp("from above equation k0*A(t1^3-t2^3)/(3*L) = km*A(t1-t2)/L")
disp("from above equation k0*A(t1^3-t2^3)/(3*L) = k0*tm^2*A(t1-t2)/L")
disp("thus required temperature is , tm =(((t1^2+t2^2+t1*t2)/3)^0.5")

