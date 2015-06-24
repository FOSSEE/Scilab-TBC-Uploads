
//calculating current drawn at 50 Hz
V=220//voltage applied to choke coil
f=50//frequency of supply
I1=12//current taken by choke coil
R1=0//resistance of coil is negligible
Xl=V/I1
I2=16.5//current taken by the resistor
R=V/I2
Z=sqrt(R^2+Xl^2)
I=V/Z
mprintf("Current taken by the circuit at 50 Hz=%f A\n",I)
//calculating current drawn at 30 Hz
Xl_dash=30/50*Xl
Z_dash=sqrt(Xl_dash^2+R^2)
I=V/Z_dash
mprintf("Current drawn by the circuit at 30 Hz=%f A\n",I)
