//Find R1 and R2
//Solved Example Ex3.26 page no 96  
clear
clc
b=100
Vbeq=0.7            //V
Vcc=15              //V
Re=300              //kΩ
Rc=500              //kΩ
Icq=((Vcc)/(2*(Re+Rc)))*1000
printf("\n  Icq = %0.2f  mA",Icq)
Rb=(b*Re/10)/1000
printf("\n  Rb = %0.2f  Kohm",Rb)
Vbb=Vbeq+Icq*(1.1*Re)/1000
printf("\n  Vbb = %0.2f  V",Vbb)
R1=Rb/(1-Vbb/Vcc)
printf("\n  R1 = %0.2f  Kohm",R1)
R2=Rb*(Vcc/Vbb)
printf("\n  R2 = %0.2f  Kohm",R2)
