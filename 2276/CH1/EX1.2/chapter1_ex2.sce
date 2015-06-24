clc
clear

//input
v1=10;// d.c. voltage source in volts present in arm 1 in series with a 2 ohm resistor
v2=15;//d.c. voltage source in volts present in arm 2 in series with a 3 ohm resistor
r1=2; //resistance in arm 1 in ohms
r2=3;// resistance in arm 2 in ohms
r3=1.8;//resistance between node formed by arm 1 and 2 and point A
R=3;//load resistance in ohms placed in arm AB
// point A and B are in open condition and arm 1 and 2 are in parallel

//calculations
//thevenin equivalent circuit method
i1=(v2-v1)/(r1+r2);// current in the parallel circuit in amperes
e=v2-(i1*r2);// open cicuit e.m.f in volts i.e. thevenin's voltage
r=r3+((r1*r2)/(r1+r3));// resistance to be considered between AandB in ohms i.e. thevenin's resistance
I=e/(r+R);//current through the load resistance in amperes

//output 
mprintf(' the thevenin equivalent generator will have a constant e.m.f. of %3.0f V and internal resistance of %3.0f ohm. \n the current in 3 ohm resistor is %3.0f A',e,r,I)
