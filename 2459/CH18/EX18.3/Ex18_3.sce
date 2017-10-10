//chapter18
//example17.3
//page398

fr=1200 // kHz
Q=60

BW=fr/Q
f1=fr-(BW/2)
f2=fr+(BW/2)

printf("bandwidth = %.3f kHz \n",BW)
printf("lower cut-off frequency = %.3f kHz \n",f1)
printf("upper cut-off frequency = %.3f kHz \n",f2)
