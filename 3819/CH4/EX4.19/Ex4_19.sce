// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 4-Buoyancy and Floatation
//// Problem 4.19

//Given Data Set in the Problem
dens=1000
g=9.81
L=70
b=10
w=19620*10^3
theta =6
sw=10104
w1=343.35*10^3
x=6
COB=2.25
H=2.25

//calculations
//1)
//Meta centric height 
GM=w1*x/w/tan(theta /180*%pi)
mprintf("The meta centric height is %f m \n",GM)

//2)
//Position of centre of gravity
I=0.75*(1/12*L*10^3)        //MOI
Vol=w/sw            //vol of water displaced
//from equation for meta centric height ,we get,
BG=I/Vol-GM
mprintf("The distance of G from the free water surface is %f m \n",H-BG)
