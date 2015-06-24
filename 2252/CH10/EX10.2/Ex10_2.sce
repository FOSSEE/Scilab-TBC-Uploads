
i=20D-3  //current throught the coil
r=4  //resistance of coil
V=30  //voltage to be measured
R=(V-r*i)/i  //resistance in series to read upto 30 V
//to read upto 60 V
V=60
R1=V/i-r
mprintf("Additional resistance needed to read upto 60 V=%d ohm\n", R1-R)
//to read upto 90 V
V=90
R2=V/i-r
mprintf("Additional resistance needed to read upto 90V=%d ohm",R2-R1)

