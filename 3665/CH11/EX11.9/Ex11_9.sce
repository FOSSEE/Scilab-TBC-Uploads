clc//
//
//

//Variable declaration
mew=9.4*10^-24;    
H=2;      //magnetic field(weber/m^2)
k=1.38*10^-23;     //boltzmann constant

//Calculation
T=2*mew*H/(log(2)*k);    //temperature(K)

//Result
printf("\n temperature is %0.1f K",T)
