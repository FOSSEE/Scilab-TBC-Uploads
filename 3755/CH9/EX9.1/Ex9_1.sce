clear
//
//
//

//Variable declaration    
I0=0.3;     //current(micro A)
V=0.15;      //voltage(V)

//Calculations
I=I0*(exp(40*V)-1);      //value of current(micro A)

//Result
printf("\n value of current is %0.2f micro A",I)
