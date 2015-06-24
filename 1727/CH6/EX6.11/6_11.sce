clc
//Initialization of variables
dw=1000 //kg/m^3
muw=0.001 //N s /m^2
da=1.225 //kg/m^3
mua=18*10^-6 //N s /m^2
lr=1/10
//calculations
dr=da/dw
mur=mua/muw
vr=mur/dr
velocity= vr/lr
discharge =lr*vr
pressure = mur^2 /(dr*lr^2)
force = mur^2 /dr
//results
printf("Scale ratio for velocity = %d ",velocity)
printf("\nScale ratio for discharge = %.2f ",discharge)
printf("\nScale ratio for pressure = %.1f ",pressure)
printf("\nScale ratio for force = %.3f ",force)
