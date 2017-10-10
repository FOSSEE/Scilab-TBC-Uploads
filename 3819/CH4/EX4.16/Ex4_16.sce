// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 4-Buoyancy and Floatation
//// Problem 4.16

//Given Data Set in the Problem
dens=1000
g=9.81
D=1
H=2
w=7.848*10^3
dens1=1030


//calculations
//1) to show that it cannot float vertically
function [f]=F(h)
    f=w-dens1*g*%pi/4*D^2*h
endfunction
h=1
h=fsolve(h,F)
//distance of the centre of gravity G,from A is AG 
AB=h/2
AG=H/2
BG=AG-AB
//now ,meta centric height is equal to 
I=%pi/64*D^4
Vol=%pi/4*D^2*h
GM=I/Vol-BG
mprintf("The meta centric height is at %f m \n",GM)
if GM<0 then mprintf("Since M lies below G,Hence,The body cannot float vertically \n")
    else mprintf("Since M lies above G,Hence,The body can float vertically \n")
end
//2)
T=poly(0,"T")
F_d=w+T
//equating the total downward force to weight of awter displaced
h0=(F_d)/(dens1*g*%pi/4*D^2)
AB=h0/2
//Combined CG due to weight of cylinder and the rension in the chain is
AG=(w*H/2+T*0)/(w+T)
BG=AG-AB
//the metacentric height is GM
I=%pi/64*D^4
function [g]=G(T)
    g=(%pi/64*D^4)/(%pi/4*D^2*(w+T)/(dens1*g*%pi/4*D^2))-((w*H/2+T*0)/(w+T))+((w+T)/2/(dens1*g*%pi/4*D^2))
endfunction
T=1
T=fsolve(T,G)
mprintf("The Force necessary in the chain to keep it vertical is minimum %f N \n",T)
