// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.33

//Data given in the Problem
dens=1000
g=9.81
h=9
theta=120
theta1=(180-theta)/2
W=10
w=W/2/cos(theta1*%pi/180)
H1=8
H2=4


//Calculations
//1)
A1=w*H1
h1=H1/2
F1=dens*g*A1*h1
A2=w*H2
h2=H2/2
F2=dens*g*A2*h2
F=F1-F2         //Resultant force as a diference 
mprintf("Resultant water prssure is %f N \n",F)
//2)
//Reaction between the gates 
R=F/(2*sin(theta1*%pi/180))
mprintf("Reaction between the gates is %f N \n",F)
//3)Force on each hinge
//we know R_T+R_B=R
//Taking moments of forces;
x=(F1*H1/3-F2*H2/3)/F
//also taking moments of reactions,
R_T=R*(x-1)/(6-1)
R_B=R-R_T
mprintf("The tension is %f N for top and %f N for the bottom hinge\n",R_T,R_B)
