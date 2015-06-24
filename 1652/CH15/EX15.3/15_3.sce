clc
//Initialization of variables
R1=312 //ohms
R2=1043 //ohms
c=0.01 //N
kdash=0.002768 //ohm^-1cm^-1
//calculations
k=kdash*R1
kdash2=k/R2
lambda=kdash2/(c/1000)
//results
printf("Equivalent conductance = %.1f ohm^-1 cm^2 equiv^-1",lambda)
