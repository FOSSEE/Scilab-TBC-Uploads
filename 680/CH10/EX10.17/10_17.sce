//Problem 10.17:

//initializing the variables:
T = 1900;// in deg F
ea0 = 0
ea100 = 1

//calculation:
NHV0 = 0.3*(T-60)/(1 - (1+ ea0)*7.5E-4*0.3*(T-60))
NHV100 = 0.3*(T-60)/(1 - (1+ea100)*7.5E-4*0.3*(T-60))

printf("\n\nResult\n\n")
printf("\n NHV for 0 percent Excess air is %.0f Btu/lb and for 100 percent is %.0f Btu/lb",NHV0, NHV100)