//chapter12
//example12.22
//page257

V_CC=10 // V
R1=1.5 // kilo ohm
R2=0.68 // kilo ohm
R_E=0.24 // kilo ohm
V_BE=0.7 // V
beta_min=100
beta_max=400

V2=V_CC*R2/(R1+R2)
I_E=(V2-V_BE)/R_E
I_C=I_E

beta_avg=(beta_min*beta_max)^0.5
I_B=I_E/(beta_avg+1)

printf("base current = %f micro ampere \n",I_B*1000)

// the accurate answer for base current is 50.151 micro ampere but in book it is given as 49.75 micro ampere
