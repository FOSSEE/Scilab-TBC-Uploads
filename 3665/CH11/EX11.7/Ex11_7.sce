clc//
//
//

//Variable declaration
chi1=2.8*10^-4;     //susceptibility
T1=350;          //temperature(K)
T2=300;          //temperature(K)

//Calculation
chi2=chi1*T1/T2;     //susceptibility

//Result
printf("\n susceptibility is %0.3f *10^-4",chi2*10^4)
