clc
//Example 17.1
//Calculate the boundary layer thickness
//for the aeroplane
v=1.61*10^(-4)//ft^2/s
x=2//ft
V=200//miles/hr
//1 mile = 5280 ft
//1 hr = 3600 sec
delta_aeroplane=5*(v*x/(V*5280/3600))^0.5
printf("The boundary layer thickness for the aeroplane is %f ft\n",delta_aeroplane);
//for the boat
v1=1.08*10^(-5)//ft^2/s
x1=2//ft
V1=10//miles/hr
//1 mile = 5280 ft
//1 hr = 3600 sec
delta_boat=5*(v1*x1/(V1*5280/3600))^0.5
printf("The boundary layer thickness for the boat is %f ft\n",delta_boat);