//chapter16
//example16.11
//page352

Av=1000
mv=0.01
f1=1.5 // kHz
f2=501.5 // kHz

f_1f=f1/(1+Av*mv)
f_2f=f2*(1+mv*Av)

printf("new lower cutoff frequency with negative feedback = %.3f kHz or %.3f Hz \n",f_1f,f_1f*1000)
printf("new upper cutoff frequency with negative feedback = %.3f kHz or %.3f MHz \n",f_2f,f_2f/1000)

// the accurate answers are 136.364 Hz and 5.516 MHz but in book they are given as 136.4 Hz and 5.52 MHz respectively
