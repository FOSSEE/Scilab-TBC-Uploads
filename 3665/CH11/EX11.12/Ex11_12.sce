clear//
//
//

//Variable declaration
Tc=7.18;     //temperature(K)
H0=6.5*10**4;    //critical field(T)
T=4.2;      //temperature(K)
d=1*10**-3;    //diameter(m)

//Calculation
Hc=H0*(1-(T/Tc)**2);      //critical field(T)
ic=%pi*d*Hc;       //critical current(A)

//Result
printf("\n critical current is %0.2f A",ic)
printf("\n answer given in the book is wrong")
