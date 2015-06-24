//chapter 9
//example 9.3
//page 257
clear;
clc ;
//given
Idmax=2.5;//maximum drain current in mA
Vgs=2.7;//gate to source voltage in volts(from transfer characteristics)
//for fixed bias
Vg=Vgs;
Vdd=24; // supply voltage in volts 
Vds=8;//drain to source voltage in volts
Rd=(Vdd-Vds)/Idmax;//drain resistance in kohm
Rg=1;//gate resistance in Mohm
printf('\nVgs=%.1f V\nVg=%.1f V\nRd=%.1f kohm,use standard value 5.6 kohm\nRg=%d Mohm',Vgs,Vg,Rd,Rg)
