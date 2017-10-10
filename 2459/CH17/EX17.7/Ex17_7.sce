//chapter17
//example17.7
//page387

L=1 // H
C=0.01d-12 // F
Cm=20d-12 // F

fs=1/(2*%pi*(L*C)^0.5)
Ct=C*Cm/(C+Cm)
fp=1/(2*%pi*(L*Ct)^0.5)

printf("series resonant frequency = %.3f Hz  or %.3f kHz\n",fs,fs/1000)
printf("parallel resonant frequency = %.3f Hz or %.3f kHz\n",fp,fp/1000)

// in book the answer given is 1589 kHz for series resonant frequency but the accurate answer is 1591.549 kHz
// in book the answer given is 1590 kHz for parallel resonant frequency but the accurate answer is 1591.947 kHz
