clc;
disp("Example 9.1")
density=1000 // in kg/m^3
densitys=900  // in kg/m^3
delh=0.025
g=9.81
delP=delh*g*(density-densitys)
vmax=0.98*((2*delP/densitys)^0.5)
vavg=0.85*vmax
disp(vavg,"Average velocity is ")
