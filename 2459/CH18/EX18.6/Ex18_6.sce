//chapter18
//example18.6
//page405

L=50.7d-6 // H
C=500d-12 // F
R=10 // ohm
Rl=1d6 // ohm

fr=1/(2*%pi*(L*C)^0.5)
R_dc=R
Xl=2*%pi*fr*L
Q=Xl/R
Rp=Q*Xl
R_ac=Rp*Rl/(Rp+Rl)

printf("resonant frequency = %.3f Hz or %.3f kHz \n",fr,fr/1000) // amswer in book is incorrect
printf("dc load = %.3f ohm \n",R_dc)
printf("ac load = %.3f ohm or %.3f kilo ohm \n",R_ac,R_ac/1000)

// in book the aswer for resonant frequency is 106 Hz which is incorrect
// the correct answer is 999.611 kHz

// the accurate answer for ac load is 10.038 kilo ohm
