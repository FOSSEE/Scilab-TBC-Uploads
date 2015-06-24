//chapter 9
//example 9.4
//page 257
clear all;
clc ;
//given
Vgs=2.7;//gate to source voltage in volts
Vdd=24; // supply voltage in volts 
Rd=5.6;//drain resistance in kohm
Idmin=0.1;
Idmax=2.5;//drain current in mA from transfer chracteristics
Vdsmax=Vdd-Idmin*Rd;
Vdsmin=Vdd-Idmax*Rd;//drain to source voltage in volts
printf('\nId(min)=%.1f mA\nId(max)=%.1f mA\nVds(max)=%.1f V\nVds(min)=%d V',Idmin,Idmax,Vdsmax,Vdsmin);
