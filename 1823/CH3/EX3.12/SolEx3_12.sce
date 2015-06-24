//Find KVL around the emitter-base loop
//Solved Example Ex3.12 page no 87
clear
clc
Vceq=-6.4       //V
Vbeq=-0.3          //V
Vcbq=Vceq-Vbeq      //V
printf("\n  Vcbq = %0.2f  V",Vcbq)
Vee=2
Ieq=3
Re=((Vee+Vbeq)/Ieq)*1000
printf("\n  Re = %0.2f  Ohm",Re)
