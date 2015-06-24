
i=20D-3  //current throught the coil
r=4  //resistance of coil
V=i*r
//when total current to be measured=2 A
Is=2-i  //shunt current
R1=V/Is
mprintf("Resistance of shunt for 2A range=%f ohm\n",R1)
//when total current to be measured=4 A
Is=4-i  //shunt current
R2=V/Is
mprintf("Resistance of shunt for 4A range=%f ohm\n", R2)
//when total current to be measured=6 A
Is=6-i  //shunt current
R3=V/Is
mprintf("Resistance of shunt for 6A range=%f ohm",R3)
