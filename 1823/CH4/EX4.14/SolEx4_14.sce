//find IDQ and VGSQ.
//Example 4.14 page no 123
clear
clc
Vdd=15              //v
Vdsq=7              //v 
Rs=3                //kΩ
Rd=1                //kΩ
Idq=((Vdd-Vdsq)/(Rs+Rd))
printf("\n Idq=%0.2f mA" ,Idq)
Vgsq=-(Idq*Rd)
printf("\n Vgsq=%0.2f V" ,Vgsq)
