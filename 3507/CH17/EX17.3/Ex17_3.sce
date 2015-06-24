//chapter17
//example17.3
//page379

L1=1000d-6 // H
L2=100d-6 // H
M=20d-6 // H
C=20d-12 // F

Lt=L1+L2+2*M

f=1/(2*%pi*(Lt*C)^0.5)
mv=L2/L1

printf("operating frequency = %.3f Hz or %.3f kHz \n",f,f/1000)
printf("feedback function = %.3f",mv)

//in book the answer is 1052 kHz but the accurate answer is 1054.029 kHz
