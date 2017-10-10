//chapter18
//example18.1
//page396
L=1.25d-3 // H
C=250d-12 // F
R=10 // ohm

fr=(((1/(L*C))-(R^2/L^2))^0.5)/(2*%pi)
Zr=L/(C*R)
Q=2*%pi*fr*L/R

printf("resonant frequency of circuit = %.3f Hz or %.3f kHz \n",fr,fr/1000)
printf("impedence of circuit at resonance = %.3f ohm or %.3f kilo ohm \n",Zr,Zr/1000)
printf("quality factor of the circuit = %.3f",Q)
