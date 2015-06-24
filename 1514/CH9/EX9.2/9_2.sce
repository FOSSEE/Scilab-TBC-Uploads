//chapter 9
//example 9.2
//page 255
clear all;
clc ;
//given
Vg=-1;
Vgs=Vg;//gate to source voltage in volts
Idmin=1.75;
Idmax=5.5;//drain current in mA from transfer chracteristics
Rd=2;//drain resistance in kohm
Vdd=22; // supply voltage in volts 

//for Idmin
Vds1=Vdd-(Idmin*Rd);

//for Idmax
Vds2=Vdd-(Idmax*Rd);//drain to source voltage in volts

printf('\nIdmin=%.2f mA\nIdmax=%.1f mA\nFor Idmin,Vds=%.1f V\nFor Idmax,Vds=%d V',Idmin,Idmax,Vds1,Vds2)
