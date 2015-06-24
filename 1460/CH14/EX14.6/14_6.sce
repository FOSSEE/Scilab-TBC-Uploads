clc
//initialization of variables
k=0.04 //B/hr-ft-F
thick=1 //in
T1=90 //F
T2=30 //F
Air=2.5 //B/hr-ft^2-F
film=2  //B/hr-ft^2-F
//calculations
U=1/(1/Air + thick/12/k + 1/film)
Q=U*(T1-T2)
//results
printf("Rate of heat transfer per unit square area = %.1f B/hr-ft^2",Q)
