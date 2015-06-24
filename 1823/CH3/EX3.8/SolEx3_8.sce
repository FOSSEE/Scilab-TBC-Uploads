//find graphically (a) ICQ; ðbÞ RC; ðcÞ IEQ, and (d)  if leakage current is negligible.
//Solved Example Ex3.8 page no 85
clear
clc
Vcc=14              //V
Rc=(14/(6.5*10^-3))/1000        //kΩ
Icq=2.25                //mA
Ibq=20*10^-3            //mA
Ieq=Icq+Ibq             //mA
printf("\n  Ieq = %0.2f  mA",Ieq)
b=Icq/Ibq
printf("\n  Beta = %0.2f  mA",b)
