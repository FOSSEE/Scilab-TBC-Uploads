//find (a) VDSQ1; ()b) IDQ1; (c) VGSQ1, (d) VGSQ2, and (e) VDSQ2
//Example 4.18 page no 126
clear
clc
Idq1=1.22           //mA
Vdsq1=0             //V
Vdd=15              //V
Rs=2                //kΩ
Rd=5                //kΩ
Vgsq1=-(Idq1*Rs)
printf("\n Vgsq=%0.2f V" ,Vgsq1)
Vdsq2=Vdd-Vdsq1-Idq1*(Rs+Rd)
printf("\n Vdsq2=%0.2f V" ,Vdsq2)
