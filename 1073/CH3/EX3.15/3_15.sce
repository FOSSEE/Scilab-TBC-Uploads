
clc;
clear;
//Example 3.15    
u_inf=50    //velocity in [m/s]
mu=2.14*10^-5    //[kg/(m.s)]
rho=0.966    //[kg/cubic m]
k=0.0312    //[W/(m.K)]
Npr=0.695    //Prandtl number
D=0.05    //Diameter in [m]
Nre=D*u_inf*rho/mu ;  //Reynold's number
printf("%f",Nre)
Nnu=0.0266*Nre^0.805*Npr^(1/3);
h=Nnu*k/D   ; //W/sq m.K
h=171.7     //Approximation
printf("\n%f",h)
Tw=423    //[K]
T_inf=308    //[K]
//Heat loss per unit length is :
Q_by_l=h*%pi*D*(Tw-T_inf);  //[W]
printf("Heat lost per unit length of cylinder is %f W(approx)",round(Q_by_l));
