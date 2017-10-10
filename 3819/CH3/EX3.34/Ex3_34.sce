// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 3.34

//Given Data Set in the Problem
dens=1000
g=9.81
a=2.4
l=6
w=2.5
d=2
h=1
x=3

//calculation
//1)
tan_theta=a/g
theta=(atan(a/g))/%pi*180
mprintf("\nThe angle of water surface to the horizontla is %f degrees downwards\n\n",theta)
//2)
h1=h-x*tan_theta
h2=h+x*tan_theta
p_max=dens*g*h2
p_min=dens*g*h1
mprintf("The maximum and minimum pressues at the bottom are %f and %f N/m^2 respective;y\n\n",p_max,p_min)
//3)
A1=h1*w             //BD=h1
H1=h1/2
F1=dens*g*A1*H1
A2=h2*w
H2=h2/2
F2=dens*g*A2*H2
F=F2-F1         //resultant force
mprintf("The resultant force due to water acting on each end of the tank is %f N\n",F)
