
//calculating resistance of the shunt
i=20D-3  //current throught the coil
r=4  //resistance of coil
V=i*r
I=2  //total current to be measured
Is=I-i  //current through shunt
R=V/Is  //Ohm's law
mprintf("Resistance of the shunt=%f ohm\n", R)
//solving part (ii)
V=30  //voltage to be measured
R=V/i-r
mprintf("Resistance to be connected in series with moving coil=%d ohm", R)
