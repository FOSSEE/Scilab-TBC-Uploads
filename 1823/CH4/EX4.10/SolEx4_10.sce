//find (a) VGG and (b) VDSQ
//Solved Example Ex4.10 page no 121  
clear
clc
Idq=-8          //mA
Idss=-10        //mA
Vp0=-4          //V
Vgsq=Vp0*(((Idq/Idss)^(1/2))-1)
printf("\n  Vgsq = %0.2f  V",Vgsq)
Vdd=-20
Rd=1.5
Vdsq=Vdd-Idq*Rd
printf("\n  Vdsq = %0.2f  V",Vdsq)
