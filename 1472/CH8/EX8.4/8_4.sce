clc
//initialization of varaibles
T1=50+460 //R
T2=150+460 //R
m=1
cp=0.240
//calculations
ds=m*cp*(log(T2) - log(T1))
//results
printf("Change in entropy = %.4f B/ F abs",ds)
