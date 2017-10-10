// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 3.38

//Given Data Set in the Problem
dens=1000
g=9.81
h=1.5
L=4
b=2
a=4
alpha=30

//calculations
//1)
a_x=a*cos(alpha/180*%pi)
a_y=a*sin(alpha/180*%pi)
theta=(atan(a_x/(a_y+g)))/%pi*180
mprintf("The angle made by the free surface of water withg horizontal is %f degrees\n",theta)
//2)
EO=2
ED=h
CE=EO*(a_x/(g+a_y))
h2=ED+CE
AF=h
BF=CE
h1=AF-BF
//Calculating pressure at tank bottom at rear end
pD=dens*g*h2*(1+a_y/g)
pA=dens*g*h1*(1+a_y/g)
mprintf("The Pressure at tank bottom at rear end is %f N\nThe Pressure at the front end is %f N \n",pD,pA)
