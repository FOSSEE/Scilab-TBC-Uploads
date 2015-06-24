//determine (a) VGSQ, (b) IDQ, and (c) VDSQ.
//Example 4.23 page no 130

clear
clc
Idss=10         //mA
Vgsq=-1.34      //V
Vp0=4           //V
Rs=2            //kΩ
Vdd=15          //V
Rd=500          //kΩ
Idq=Idss*((1+(Vgsq/Vp0))^2)
Vdsq=Vdd-Idq*10^-3*(Rs*10^3+Rd)
printf("\n Idq=%0.2f mA" ,Idq)
printf("\n Vdsq=%0.2f V" ,Vdsq)

