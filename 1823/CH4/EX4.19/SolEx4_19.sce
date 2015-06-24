//find (a) VGSQ1; b) IDQ2, (c) VGSQ2; d) VDSQ1, and (e) VDSQ2.
//Example 4.19 page no 127
clear
clc
Idq1=0              //mA
Idq2=2.92           //mA
Vdd=15              //V
Vgsq1=-4            //V
Rs=2                //kΩ
Rd=1                //kΩ
Vgsq2=-Vgsq1-Idq2*Rs
printf("\n Vgsq2=%0.2f V" ,Vgsq2)
Vdsq1=Vdd-(Idq1+Idq2)*Rd-Idq2*Rs-Vgsq2
printf("\n Vdsq1=%0.2f V" ,Vdsq1)
Rd=1
Idq1=0
Vdsq2=Vdd-(Idq1+Idq2)*Rd-Idq2*Rs
printf("\n Vdsq2=%0.2f V" ,Vdsq2)
