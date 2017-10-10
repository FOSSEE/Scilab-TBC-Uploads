clc//
//
//

//Variable declaration
Tc=3.7;     //temperature(K)
Hc0=0.0306;    //critical field(T)
T=2;      //temperature(K)

//Calculation
Hc2=Hc0*(1-(T/Tc)^2);      //critical field(T)

//Result
printf("\n critical field is %0.5f Tesla",Hc2)
