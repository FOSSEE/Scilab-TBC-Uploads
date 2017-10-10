// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 4-Buoyancy and Floatation
//// Problem 4.13

//Given Data Set in the Problem
dens=1000
g=9.81
D=10
L=40
l1=1
S1=6
dens1=6*dens
l2=L-l1
S2=0.6
dens2=S2*dens

//Calculations
AG=((%pi/4*D^2*l1*6*0.5)+(%pi/4*D^2*39*S2*(l1+39/2)))/(%pi/4*D^2*l1*6+%pi/4*D^2*39*S2)
//Finding meta centric point to know whther it can float vertically or not
//solving func for the value of h equating weight of cylinder to weight of the water displaced
function [f]=F(h)
    f=(%pi/4*D^2*39/100*dens2*g+%pi/4*D^2*l1/100*dens1*g-%pi/4*D^2*h/100*dens*g)
endfunction
h=10;
h=fsolve(h,F)
AB=h/2
BG=AG-AB
I=%pi/64*D^4
Vol=%pi/4*D^2*h
GM=I/Vol-BG
if (GM<=0) then mprintf("No,the body cannot float vertically in water\n");
    
end
if GM>=0 then mprintf("Yes,the body can float vertically in water\n");
    
end
