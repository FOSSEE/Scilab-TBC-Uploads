clc
//Initialization of variables
mum=0.0000121 //lbm/ft sec
D=1.820 //in
m=1.173 //lbm/sec
//calculations
Re=1.27*m*12/(D*mum)
//results
printf("Reynolds number = %d ",Re)
//The answer is a bit different due to rounding off error in textbook
