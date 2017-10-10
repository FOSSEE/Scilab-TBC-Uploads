clear
//
//
//

//Variable declaration
ni1=2.5*10**19    //number of electron hole pairs
T1=300     //temperature(K)
Eg1=0.72*1.6*10**-19    //energy gap(J)
k=1.38*10**-23     //boltzmann constant
T2=310    //temperature(K)
Eg2=1.12*1.6*10**-19    //energy gap(J)

//Calculation
x1=-Eg1/(2*k*T1)
y1=(T1**(3/2))*exp(x1)
x2=-Eg2/(2*k*T2)
y2=(T2**(3/2))*exp(x2)
ni=ni1*(y2/y1)          //number of electron hole pairs

//Result
printf("\n number of electron hole pairs is %0.2f  *10**16 per cubic metre",ni/10**16)
printf("\n answer varies due to rounding off errors")
