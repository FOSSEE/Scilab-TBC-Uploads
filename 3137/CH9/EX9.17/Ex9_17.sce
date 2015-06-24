//Initilization of variables
d=750 //mm diameter
alpha=%pi //wrap angle    radians
mu=0.25 //coefficient of friction
T_t=200 //N tension on the tight side
//Calculation
T2=T_t/(exp(mu*alpha)) //N
//Result
clc
printf('The tension of the slack side is %fN',T2)

