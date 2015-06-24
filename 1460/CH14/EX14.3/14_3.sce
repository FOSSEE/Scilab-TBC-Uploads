clc
//initialization of variables
L=6.5 //in
thick=1 //in
k=0.06  //B/hr-ft-F
T1=350 //F
T2=110 //F
//calculations
QbyL=2*%pi*k*(T1-T2)/log(1+2/L)
//results
printf("heat flow = %d B/hr-ft",QbyL)
//The answer given in textbook is wrong. Please calculate using a calculator
