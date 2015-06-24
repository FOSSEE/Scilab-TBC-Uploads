clc
//solution
// initialization of variables

T1=40 // inlet temperature in degree celsius
T2=27 // outlet temperature in degree celsius
phi1= 10 // relative humidity at inlet
// as no heat transfer takes place thus isenthalpic process
//Thus following the enthalpy line at DBT=40 and Relative humidity=10
phi2=45 // by interpolation of constant enthalpy line
w1=0.0046// specific humidity @ T=40 and phi1=10
w2=0.010 // specific humidity at outlet
W=w2-w1 // amount of water added
Tmin=18.5 // minimum temperature at 100% relative humidity
printf("The relative humidity is %i %% \n ",phi2)
printf("The added water is %0.04f kg water/kg dry air \n",W)
printf("The lowest possible temperature is %0.1f *C ",Tmin)

