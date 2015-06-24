clc
//Initialization of variables
M=29
m1=8.74
m2=32.85
fuel=100 //lbm
//calculations
mass=M*(m1+m2)
AF=mass/fuel
a2=9.75
b2=12.19
AF2=mass/(fuel+a2+b2)
//results
printf("Air fuel ratio = %.2f lbm air/lbm fuel",AF)
printf("\n In dry air, Air-fuel ratio = %.1f lbm air/lbm fuel as fired",AF2)
