
//calculating resistance of manganin shunt to extend range to 1 A
R=10  //resistance of instrument coil
I=10D-3  //current through coil
V=I*R
Is=1-I  //shunt current
r=V/Is
mprintf("Resistance of manganin shunt to extend range to 1 A=%f ohm\n", r)
//calculating value of series resistance to extend the range to 15 V
v=15-V  //voltage across series resistance
Rs=v/I
mprintf("Series resistance to be connected to extend range to 15 V=%d ohm", Rs)
