clear
//
//given and derived
v=450
r=0.25
i1=160
i2=125
r1=450/(160)
eb1=v-i2*r1
//flux decreases by 12% hence eb2=1.12*eb1
eb2=110.60
r2=(v-eb2)/i1
eb3=v-i2*r2
eb4=1.12*eb3
r3=(v-eb4)/i1

//resistance of each section of the starter is determined as follows
R1=r1-r2
printf("\n R1= %0.1f  ohm",R1)
R2=r2-r3
printf("\n R2= %0.1f  ohm",R2)

