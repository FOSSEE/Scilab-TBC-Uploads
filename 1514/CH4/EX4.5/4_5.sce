//chapter 4
//example 4.5
//page 102
clear all;
clc ;
//given
Vcc=15;//supply voltage
Vce=5;//collector to emitter voltage
Ic=5;//mA
hfe=100;Vbe=0.7;
Ib=1000*Ic/hfe;//microA
Rb=1000*(Vce-Vbe)/Ib;
Rc=(Vcc-Vce)/(Ib*10^-3+Ic);
printf("\nValue of Rc=%.2f kohm\nstandard value 1.8 kohm\nRb=%d kohm\nstandard value 82 kohm",Rc,Rb);



