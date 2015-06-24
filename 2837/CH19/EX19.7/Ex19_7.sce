clc
clear
//Initalization of variables
t1=540 //R
h1=129.06
pr1=1.386
cr=5
//calculations
pr2=pr1*cr
disp("From air tables,")
h2=204.63
cwork=h2-h1
//results
printf("Compressor work = %.2f Btu/lb",cwork)
