clc 
//initialisation of variables
ADOL= 10^5
ADOL1= 10
dc= 20
dc1= 10
f= 40 //kHz
//CALCULATIONS
ADOL2= dc*log(ADOL)
ADOL3= dc*log10(ADOL1)
f1= ADOL1*f
//RESULTS
printf ('A0CL = %.f dB ',ADOL3)
printf ('\n frequency = %.f kHz ',f1)
