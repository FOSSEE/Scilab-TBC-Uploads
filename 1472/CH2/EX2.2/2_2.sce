clc
//Initialization of variables
Wb=-33000 //ft-lb
V2=3 //cu ft
V1=1 //cu ft
P=69.4 //psia
//calculations
Wa=P*(V2-V1)*144
W=Wa+Wb
//results
printf("Net work done = %d ft-lb",W)
