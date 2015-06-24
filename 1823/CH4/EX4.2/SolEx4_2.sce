//Calculate IDQ from the analog
//Solved Example Ex4.2 page no 118  
clear
clc
Idon=5//*10^-3          //mA
Vgsq=6.90               //V
Vt=4                    //V
Idq=Idon*((1-(Vgsq/Vt))^2)
printf("\n  Idq = %0.2f  mA",Idq)
