clear
//
//
//

//Variable declaration
rho=1.7*10**-8    //resistivity(ohm m)
T=300     //temperature(K)
T1=973    //temperature(K)

//Calculation
a=rho/T    
rho_973=a*T1    //resistivity(ohm m)

//Result
printf("\n resistivity is %0.2f  *10**-8 ohm m",rho_973*10**8)
