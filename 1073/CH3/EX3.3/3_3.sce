clc;
clear;
//Example 3.3
//Given
mu=15*10^-6    //Kinematic viscosity in [sq m /s]
x=0.4    //[m]
u_inf=3    //[m/s]
//At x=0.4 m,
Nre_x=u_inf*x/mu    ;
printf("Since Nre,x (%f)is Less than 3*10^5,..the boundary layer is laminar",Nre_x);
del=4.64*x/sqrt(Nre_x)    //[m]
del=del*1000    //[mm]
printf("\nThickness of boundary layer at x=%f m =%f mm\n",x,del);
Cf_x=0.664/sqrt(Nre_x);
printf("Local skin friction coefficient is :%f",Cf_x);

