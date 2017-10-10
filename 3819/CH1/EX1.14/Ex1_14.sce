// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.15


//Given Data Set in the Problem(SI Units)
visc=6/10
D=0.4
N=190
L=90/1000
t=1.5/1000


//Calculations
u_tangent=%pi*D*N/60
du=u_tangent-0
dy=t
ss=visc*du/dy
Area=%pi*D*L
Force=ss*Area                               //Force =shear stress *Area
T=Force*D/2                               //Torque =Force*(D/2)
Power_lost=(2*%pi/60)*N*T                   //Power lost =(2*pi/60)*Torgue*Speed of the shaft
mprintf("The Power lost in the bearing of the sleeve is %f W",Power_lost)

