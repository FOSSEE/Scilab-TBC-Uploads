// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 4-Buoyancy and Floatation
// Problem 4.9

//Given Data Set in the Problem
dens=1000
g=9.81
V=2*1*0.8
sg=0.7

//calculations
h=poly(0,"h")
w_d=dens*g*2*1*h
//we know thtat at equilibrium; weight of wooden piece =weight of wter displaced
w_w=sg*dens*g*2*1*0.8
function[f] = F(h)
f=w_w-(dens*g*2*1*h)            //w_wood-w_displaced
endfunction
h=1
h=fsolve(h,F)
//For centre of buoyancy
AB=h/2
AG=0.8/2
BG=AG-AB
//Meta centric heinght
I_yy=1/12*2*1^3
v_sub=2*1*h
//hence GM is 
GM=I_yy/v_sub-BG
mprintf("The Meta centric height is %f m\n",GM)
