clc
clear
//Initialization of variables
th1=800 //F
th2=300 //F
tc1=100 //F
tc2=400 //F
//calculations
lmtd= ((th1-tc2) - (th2-tc1) )/(log((th1-tc2)/(th2-tc1)))
//results
printf("Logarithmic Mean temperature difference = %d F",lmtd)
