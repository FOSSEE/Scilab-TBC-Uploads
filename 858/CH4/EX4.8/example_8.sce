clc
clear 
printf("example 4.8 page number 137\n\n")

//to find the boundary layer properties

disp('part 1')
x=0.05   //in m
density=1000   //in kg/m3
viscosity=1*10^-3    //in Pa-s
u=1   //in m/s
Re=(density*u*x)/viscosity;

printf("Reynolds Number = %f",Re)

thickness=4.65*x*(Re)^-0.5;
printf("\nboundary layer thickness = %f m\n",thickness)

disp('part 2')
Re_x=3.2*10^5;
x_cr=(Re_x*viscosity)/(density*u);
printf("transition takes place at x = %f m\n",x_cr) 

disp('part 3')
x=0.5   //in m
Re=(density*u*x)/viscosity;
thickness=0.367*x*(Re)^-0.2;
printf("boundary layer thickness= %f m",thickness)

t_sublayer=71.5*x*(Re)^-0.9;
printf("\nsub layer thickness= %f m",t_sublayer)
