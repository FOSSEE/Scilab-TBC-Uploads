clear
//
//
//

//Variable declaration    
I0=4*10^-6;     //current(A)
T=273+25;    //temperature(K)
V=0.15;      //voltage(V)
eta=1;

//Calculations
VT=T/11600;
IF=I0*(exp(V/VT)-1);     //forward current(A)
IR=I0*(exp(-V/VT)-1);     //reverse current(A)
r=-IF/IR;       //rectification ratio

//Result
printf("\n rectification ratio is %0.3f ",r)
printf("\n answer in the book is wrong")
