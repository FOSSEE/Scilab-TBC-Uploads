clc
clear
//Initialization of variables
dif=4 //in
gam=62.4 //lb per cu ft
density=13.6 //g/cc
//calculations
pv=dif*1/12 *density*gam/144 - dif/12 *gam/144
hv=pv*144/gam
//results
printf("velocity pressure = %.2f psi",pv)
printf("\n velocity head = %.1f ft of water ",hv)
