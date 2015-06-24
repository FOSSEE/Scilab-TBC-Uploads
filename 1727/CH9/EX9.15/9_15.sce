clc
//Initialization of variables
T=6*%pi
r=1/3
//calculations
vab=T/(4*%pi)
vba= T/(2*%pi)
w=vab/r
//results
printf("rate of rotation = %.1f rad/s",w)
printf("\nspeed of A by B = %.1f m/s",vab)
printf("\nspeed of B by A = %.1f m/s",vba)
