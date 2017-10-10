// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.27

//Data given in the Problem
dens=1000
g=9.81
d=4
r=2

//Calculations
A1=d*r
h=d/2
F_x1=dens*g*A1*h
W_ABCOA=dens*g*%pi/2*r^2*2
F_y1=W_ABCOA
//Right side of cylinder
A2=r*2
h2=r/2
F_x2=dens*g*A2*h2
W_DOCD=dens*g*%pi/4*r^2*r
F_y2=W_DOCD
//Net Force
F_x_net=F_x1-F_x2
F_y_net=F_y1+F_y2
//F=net pressure
F=(F_x_net^2+F_y_net^2)^0.5
theta =(atan(F_y_net/F_x_net))/%pi*180
mprintf("The resultant Force is %f N at an angle of %f degrees \n",F,theta)

//Location of resultannt force
//for position of F_x....
//F_x1 acts at r*d/3=2.67 and F_x2 acts at r*2/3=1.33 m from free surface on right of cylinder
y=(F_x1*(d-2.67)-F_x2*(r-1.33))/F_x_net    //F_x_net acts at at y metres from bottom
//F_y1 acts at 4R/(3pi) from AOC=0.8488
//F_y2 also acts at 4R/(3pi) from AOC=0.8488 towards right side
x=(F_y1*0.8488-F_y2*0.8488)/F_y_net  //F_y_net acts at at x metres from bottom
mprintf("F_y net acts at %f m from AOC and F_x_net acts at %f m from bottom \n",x,y)

//Least weight of culinder
//net upward force should be the least weight of the cylinder hence,W_least=F_y_net
mprintf("the Least weight of the cylinder is %f N\n",F_y_net)
