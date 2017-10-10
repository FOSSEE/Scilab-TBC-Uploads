//chapter18
//example18.7
//page406

Vcc=50 // V
Np=5
Ns=1
R=50 // ohm
R_ac=(Np/Ns)^2*R
Po=Vcc^2/R_ac

printf("ac load = %.3f ohm \n",R_ac)
printf("maximum load power = %.3f W \n",Po)
