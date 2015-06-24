clc
clear
//Initialization of variables
dif=4 //in
gam=62.4 //lb per cu ft
gam2=0.08 //lb per cu ft
//calculations
pv=dif*1/12 *gam/144
hv=pv*144/gam2
//results
printf("velocity pressure = %.3f psi",pv)
printf("\n velocity head = %.1f ft of air ",hv)
