clc
clear
//Initialization of variables
T1=900 //R
P1=100 //psia
P2=10 //psia
//calculations
disp("From table B-9")
pr1=8.411
pr2=pr1*P2/P1
T2=468 //R
//results
printf("Final temperature = %d R ",T2)
