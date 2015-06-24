clc
//Initialization of variables
sf=0.0016
n=0.02
Q=0.84 //m^3/s
gam=9.81*1000
//calculations
y53= Q*n/sqrt(sf)
y=y53^(3/5)
//results
printf("depth of flow = %.2f m",y)
