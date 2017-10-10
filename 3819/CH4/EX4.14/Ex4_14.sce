// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 4-Buoyancy and Floatation
//// Problem 4.14

//Given Data Set in the Problem
dens=1000
g=9.81
W1=686.7*1000
D=5
W2=588.6*1000
w=10.104*10^3
L=10
b=7

//calculations
AG1=2.5/2
AG2=2.5+D/2
//dist of common centre of gravity from A is 
AG=(W1*AG1+W2*AG2)/(W1+W2)
//Let h be the depth of immerison 
//Total weight of ythe pontoon and the boiler =weight of the sea water displaced
function [f]=F(h)
    f=(W1+W2)-(w*L*b*h)
endfunction
h=10;
h=fsolve(h,F)       //depth of immersion
//also ,dist of common centre of buoyancy 
AB=h/2
BG=AG-AB
//for meta centric height
I=1/12*L*b^3
Vol=L*b*h
GM=I/Vol-BG
mprintf("The meta centric height of both the pontoonm and the boiler is %f m \n",GM)
