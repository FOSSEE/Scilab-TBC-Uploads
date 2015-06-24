clc
clear
//input
r=5; //resistance of the coil in ohms
v=100; // d.c supply voltage to the coil in volts
l=100*(10^-3); // inductance of the coil in henry

//calculations
i=v/r; // value of the current in amperes
e=(l*(i^2))/2; // energy stored in the circuit in joules

//output
mprintf('the value of current is %3.2f amperes  \n the energy stored in the magnetic field is %3.2f joules',i,e)
