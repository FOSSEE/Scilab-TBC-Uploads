//chapter 4
//example 4.3
//page 106
clear all;
clc ;
//given
hfe=100;
Vcc=15;//supply voltage
//dc bias conditions
Vce=5;//V
Ic=5;//mA
Vbe=0.7;
Rc=(Vcc-Vce)/Ic;
Ib=1000*Ic/hfe;
Rb=1000*(Vcc-Vbe)/Ib;
printf("\nValue of Rc=%d kohm,Rb=%d kohm",Rc,Rb);

