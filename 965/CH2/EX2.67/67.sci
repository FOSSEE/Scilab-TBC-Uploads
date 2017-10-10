clc;
clear all;
disp("/minimum nusselt number")
disp("Heat flow byconduction through sphere is given by Q = (t1-t2)/((R1-R2)/4*%pi*k*R1*R2)= (t1-t2)/Rth cond")
disp("Heat flow by convection at R2 to air is given by (t1-t2)/(1/4*%pi*h*R2^2)= (t1-t2)/Rth conv")
disp("Rth cond = 1/(4*%pi*k)*(1/R1-1/R2)")
disp("on neglecting motion of fluid, heat transfer will be conduction through small sphere and resistance of this shell to heat flow will be ")
disp("Rthcond = 1/(4*%pi*r*k")
disp("Q = (t2-ta)/(1/(4*%pi*r*k) - (1)")
disp("Heat flow can also be given by introducing h as")
disp("Q = (t2-ta)/(1/4*%pi*h*r^2 - (2)")
disp("Equating (1) and (2) we get")
disp("(t2-ta)/(1/(4*%pi*r*k)=(t2-ta)/(1/4*%pi*h*r^2")
disp("Thus, h = k/r = 2*k/d")
disp("Hence hd/k =2")
disp("Thus Nu = 2")

