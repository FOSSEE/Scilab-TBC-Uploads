//chapter 9
//example 9.9
//page 273
clear all;
clc ;
//given
Rdon=25;//ohm
Vdson=200;//mV
Id=Vdson/Rdon;//mA
Vdd=12; // supply voltage in volts 
Rd=Vdd/Id;//drain resistance in kohm
Vgsoff=10;//volts
Vpmax=Vgsoff;
Vi=-(Vpmax+1);//volts
Rg=1;//Mohm

printf('\nRd is approximately %.1f kohm which is stamdard value \nInput voltage amplitude is %d V\nSuitable value of Rg is %d Mohm',Rd,Vi,Rg)
