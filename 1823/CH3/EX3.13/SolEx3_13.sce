// Find KVL around the transistor terminals,
//Solved Example Ex3.13 page no 88
clear
clc
Vcc=12          //V
Vceq=6          //V
hf=100
Rc=2//*10^3     //kΩ
Ibq=((Vcc-Vceq)/((hf+1)*Rc))*1000
printf("\n  Ibq = %0.2f  mA",Ibq)
Vbeq=0.7
Rf=((Vceq-Vbeq)/Ibq)*1000
printf("\n  Rf = %0.2f  Ohm",Rf)
