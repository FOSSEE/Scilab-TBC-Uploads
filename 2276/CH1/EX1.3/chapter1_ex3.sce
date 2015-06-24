clc
clear

//input
r1=0.2;//resistance in arm 1 in ohms which is in series with 10 volts d.c. supply.
r2=0.2;//resistance in arm 2 in ohms which is in series with a d.c. supply of 12 volts.
r3=0.4;//resistance in arm 3 in ohms whichis in series with 15 volts d.c. supply .
//arms 1,2 and 3 are in parallel with each other and are parallel with the arm AB.
v1=10;//d.c. supply voltage in the arm 1 in volts
v2=12;//d.c. supply voltage in the arm 2 in volts
v3=15;//d.c. supply voltage in the arm 3 in volts
R1=2.28;// resistance in arm AB in ohms in one case
R2=5.82;// resistance in arm AB in ohms in another

//calculations
//thevenin equivalent circuit method
e=((v3/r3)+(v2/r2)+(v1/r1))/((1/r1)+(1/r2)+(1/r3));// thevenin's voltage in volts
r=1/((1/r1)+(1/r2)+(1/r3));//thevenin's resistance in ohms
I1=e/(r+R1);// current when resistance in AB arm is 2.28 ohms
I2=e/(r+R2);// current when resistance in AB arm is 5.82 ohms

//output
mprintf('the equivalent generator has a constant voltage of %3.1f V and an internal resistance of %3.2f ohms \n the load currents are %3.0f A and %3.0f A',e,r,I1,I2)
