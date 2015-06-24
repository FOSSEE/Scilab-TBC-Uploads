clc
// solution
//initialization of variables
T1=40 // dry bulb temperature in degree celsius
T2=20 // wet bulb temperature in degree celsius
Cp=1.0 // specific heat
P=100 // pressure of air stream in kPa
pg1=7.383 //saturation pressure @ 40 degree celsius
hfg2=2454 // latent heat for 20 degree celsius
Pg2=2.338 // saturation pressure @ 20 degree celsius
w2=0.622*Pg2/(P-Pg2) // specific humidity for wet bulb condition
hg1=2574 // specific enthalpy of saturated vapour @ 40 degree celsius
hf2=83.9 //spedific enthalpy of saturated liquid @ 20 degree celsius
w1=((w2*hfg2)+Cp*(T2-T1))/(hg1-hf2)// specific humidity for 40 degree celsius
printf("The humidity ratio is %0.5f kg water/ Kg dry air \n",w1)
pv1=100*w1/(0.622+w1) // partial pressure of vapour
phi=pv1/pg1 // relative humidity
printf("The relative humidity is %0.1f %% \n",phi*100)

hv=hg1 // temperature is at DBT=40 degree celsius
h=Cp*T1+w1*hv // specific enthalpy  of air
printf("The specific enthalpy is %0.1f kJ/kg dry air",h)


