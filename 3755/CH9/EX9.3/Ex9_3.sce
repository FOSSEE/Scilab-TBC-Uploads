clear
//
//
//

//Variable declaration    
J=10^5;     //current density(amp/m^2)
T=300;    //temperature(K)
eta=1;
J0=250*10^-3;     //saturation current density(A/m^2)

//Calculations
VT=T/11600;
x=(J/J0)+1;
V=log(x)*VT;     //voltage applied(V)

//Result
printf("\n voltage applied is %0.4f V",V)
