// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 4-Buoyancy and Floatation
//// Problem 4.22

//Given Data Set in the Problem
dens=1000
g=9.81
T=10
I=10000
BG=1.5
W=29430*10^3
SG=10100

//calculations
Vol=W/SG        //vol of water displaced
//for meta centric height 
GM=I/Vol-(BG)
//Using the formula to calculate th eradius of gyration 
function [f]=F(K)
    f=T-2*%pi*(K^2/GM/g)^0.5
endfunction
K=1
K=fsolve(K,F)
mprintf("The Radius of gyration is %f m \n",K)
