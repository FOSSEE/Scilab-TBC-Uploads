//chapter21
//example21.2
//page463

R=10d3 // ohm
C=0.01d-6 // F

T=1.4*R*C
f=1/T

printf("time period of square wave = %.3f ms \n",T*1000)
printf("frequency of square wave = %.3f kHz \n",f/1000)

// the accurate answer for frequency is 7.143 kHz but in book it is given 7 kHz
