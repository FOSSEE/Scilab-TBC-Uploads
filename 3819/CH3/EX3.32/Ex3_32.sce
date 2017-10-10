// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.32

//Data given in the Problem
dens=1000
g=9.81
h=6
theta1=30
w=5
l=2.5/cos(theta1/180*%pi)
theta=120
H1=4
H2=2

//calculations
A1=H1*l
h1=H1/2
F1=dens*g*A1*h1     //f1 acts at H1/3 from bottom
A2=H2*l
h2=H2/2
F2=dens*g*A2*h2     //F2 acts at H2/3 from bottom
F=F1-F2
//equating moment of forces,
x=(F1*H1/3-F2*H2/3)/F
//Also,,P=F/(2sin theta)
P=F/(2*sin (theta1/180*%pi))
//We know thta R_T+R_B=R   and R=P
R=P
//Taking movement of honge reactions;R_T*6+R_B*0=R*1.55
R_T=R*1.55/6
R_B=R-R_T
mprintf("The reaction on the top hinge is %f N and on the bottom hinge is %f N \n",R_T,R_B)
