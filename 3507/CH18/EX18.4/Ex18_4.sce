//chapter18
//example18.4
//page401

L=33d-3 // H
C=0.1d-6 // F
R=25 // ohm

fr=1/(2*%pi*(L*C)^0.5)
Xl=2*%pi*fr*L
Q=Xl/R
BW=fr/Q

printf("resonant frequency = %.3f Hz or %.3f kHz \n",fr,fr/1000)
printf("quality factor = %.3f \n",Q)
printf("bandwidth = %.3f Hz \n",BW)

// the accurate answer for bandwidth is 120.572 Hz but in book it is given as 120 Hz
// the accurate answer for quality factor is 22.978 but in book it is given as 23
