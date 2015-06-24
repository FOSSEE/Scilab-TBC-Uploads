clc
clear
//Initialization of variables
th1=200 //F
th2=100 //F
tc1=80 //F
tc2=110 //F
//calculations
disp("From the lmtd graph,")
R=(tc1-tc2)/(th2-th1)
P=(th2-th1)/(tc1-th1)
F=0.62
lmtd= F* ((th1-tc2) - (th2-tc1) )/(log((th1-tc2)/(th2-tc1)))
//results
printf("True Mean temperature difference = %.1f F",lmtd)
