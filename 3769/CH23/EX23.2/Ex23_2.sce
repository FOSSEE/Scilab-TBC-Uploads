clear
//Given
E=75*1.6*10**-19                           //J
h=6.62*10**-34                             //J s
c=3*10**8                                           //m/s


//Calculation
f=E/h
l=(12400/E)*1.6*10**-19
f=c/(l*10**10)

//Result
printf("\n Frequency of the photon is %0.0f *10**15 Hz",f*10**5)
