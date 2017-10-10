clear
//Given
L=800.0*10**-7
C=3.0*10**8
f1=4.5*10**6                       //Hz

//Calculation
f=C/L
d=(1/100.0)*f
E=d/L
G=d/f1

//Result
printf("\n (i) number of channels for audio signal is %0.1f  *10**8",E*10**-14)
printf("\n (ii) number of channels for video tv signal is %0.1f  *10**5",G*10**-3)
