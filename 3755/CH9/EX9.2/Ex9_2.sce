clear
//
//
//

//Variable declaration    
I=10*10^-3;     //current(A)
V=0.75;      //voltage(V)
T=300;    //temperature(K)
eta=2;

//Calculations
VT=T/11600;
I0=I*10^9/(exp(V/(eta*VT))-1);      //reverse saturation current(nA)

//Result
printf("\n reverse saturation current is %0.3f nA",I0)
printf("\n answer in the book is wrong")
