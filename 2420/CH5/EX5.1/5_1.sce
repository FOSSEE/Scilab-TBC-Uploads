clc
clear
//Initialization of variables
x=0.98
vg=26.80
vf=0.01672
//calculations
vx=x*vg+(1-x)*vf
//results
printf("Specific volume of wet steam = %.6f cu ft per lb",vx)
