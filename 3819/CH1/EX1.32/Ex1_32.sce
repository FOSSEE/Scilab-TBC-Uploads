// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.32

//Given Data Set in the Problem
visc=5/10
D=0.5
N=200
L=100/10^3
t=1*10^-3

//Calculations
//Using , tangential velocity=(pi*D*N)/60
u_tang=%pi*D*N/60
du=u_tang-0
dy=t
du_dy=du/dy
ss=visc*(du_dy)                 //Shear stress =viscosity*Velocity gradient
Area=%pi*D*L
F_shear=ss*Area
T=F_shear*D/2                    //Torque=Shear force*D/2
Power_lost=T*(2*%pi*N/60)        //Power lost =Torque*(2*pi*N/60)
mprintf("ThePower lost by the sleeve of 100m in oil is %f kW",Power_lost*10^-3)

