clc
clear
//Initialization of variables
q=1000 //Btu
th=1140 //F
tl=40 //F
ts=940 //F
//calculations
Q1=q*(th-tl)/(th+460)
Q2=q*(ts-tl)/(ts+460)
dif=Q1-Q2
//results
printf("Available energy loss = %d Btu",dif)
