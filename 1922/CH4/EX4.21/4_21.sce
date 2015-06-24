clc
clear
//Initialization of variables
ta=310 //K
tc=917.3 //K
td=365.2 //K
n=0.602
k=1.4
//calculations
lntb= 1/(1-n)/k
tb=tc- lntb*(td-ta)
rc=(tb/ta)^(1/(k-1))
//results
printf("Temperature at B = %.1f K",tb)
printf("\n Compression ratio = %d ",rc)
disp("The answer given in textbook for rc is wrong. please check using a calculator")
