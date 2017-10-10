// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.15

                                    //Part a)
//Data given in the Problem
d=3
A=%pi/4*d^2
DC=1.5
BC=d
dens=1000
g=9.81
//Calculations
//1)
sin_theta=((4-DC)/BC)
h=DC+DC*sin_theta
F=dens*g*A*h
mprintf("Part A)\nThe total pressure is %f N \n",F)
//2)
IG=%pi/64*d^4
H=IG*(sin_theta)^2/(A*h)+h
mprintf("The COP is %f m \n",H)
                                        //Part b)
//Data given in the Problem
d=3
Ao=%pi/4*d^2
d0=1.5
DC=1.5
BC=d
dens=1000
g=9.81
//Calculations
//1)
Ap=Ao-(%pi/4*1.5^2)
sin_theta=((4-DC)/BC)
h=DC+DC*sin_theta
F=dens*g*Ap*h
mprintf("Part A)\nThe total pressure is %f N \n",F)
//2)
IG=%pi/64*(d^4-d0^4)
H=IG*(sin_theta)^2/(Ap*h)+h
mprintf("The COP is %f m \n",H)
