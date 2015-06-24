//chapter 9
//example 9.1
//page 252
clear;
clc ;
//given
Rd=2;//drain resistance in kohm
Vdd=22; // supply voltage in volts 
Id1=0; //drain current in mA
Vds1=Vdd; //drain to source voltage in volts for (point A)
Vds2=0;
Id2=Vdd/Rd;//drain current in mA (point B)
plot([Vds1 Vds2],[Id1 Id2])
xtitle('Dc load line','Vds','Id')


