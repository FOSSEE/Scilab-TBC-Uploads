// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 4-Buoyancy and Floatation
//// Problem 4.11

//Given Data Set in the Problem
dens=1000
g=9.81
D=3
d=1.8
V_disp=0.6
CB1=1.95
CG=1.2
W_tot=3.9*1000*g
//For meta centric height
//Weight of water displaced=weight density of water*Volume of water displaced
x=poly(0,"x")
function [f]=F(x)           //solves for x=height of body above water surface
    f=W_tot-(dens*g*(%pi/4*D^2*(1.8-x)+V_disp))
endfunction
x=10
x=fsolve(x,F)
//Let B2 is the centre of buoyancy of the cylindrical part and B of the whole body
//for COB of the cylindrical part
CB2=x+0.5*(1.8-x)
//COB of the whole body is 
V_cyl=%pi*(D/2)^2*(1.8-x)
CB=((V_disp*CB1)+(V_cyl*CB2))/(V_disp+V_cyl)
//For meta centric height
BG=CB-CG
I_yy=%pi/64*D^4
V_sub=V_disp+V_cyl
GM=I_yy/V_sub-BG
mprintf("The Meta centric height is at %f m\n",GM)

