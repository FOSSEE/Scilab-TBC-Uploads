clc
//Initialization of variables
T1=60+460 //R
T2=100+460 //R
m=1 //lbm
cp=1 //Btu/lbm F
//calculations
ds= m*cp*log(T2/T1)
//results
printf("Change in entropy = %.3f Btu/lbm R",ds)
