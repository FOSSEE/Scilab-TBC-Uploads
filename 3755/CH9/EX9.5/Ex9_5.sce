clear
//
//
//

//Variable declaration    
T=300;    //temperature(K)
eta=1;
I0=1;
I=-0.9*I0;     //saturation current density(A/m^2)

//Calculations
VT=T/11600;
x=(I/I0)+1;
V=log(x)*VT;     //voltage applied(V)

//Result
printf("\n voltage applied is %0.2f Volt",V)
