//chapter18
//example18.2
//page396

L=100d-6 // H
C=100d-12 // F
R=10 // ohm
V=10 // V

fr=(((1/(L*C))-(R^2/L^2))^0.5)/(2*%pi)
Zr=L/(C*R)
I=V/Zr

printf("resonant frequency of circuit = %.3f Hz or %.3f kHz \n",fr,fr/1000)
printf("impedence of circuit at resonance = %.3f ohm or %.3f kilo ohm or %.3f mega ohm\n",Zr,Zr/1000,Zr/1d6)
printf("line current = %.4f ampere or %.3f micro ampere",I,I*1d6)

// the accurate answer for resonant frequency is 1591.470 kHz
