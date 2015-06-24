//(a) Find the range of IDQ that can be expected. (b) Find the range of VDSQ that can be expected. (c) Discuss
//the idea of reducing IDQ variation by increasing the value of RS.
//Example 5.26 page no 157
clear
clc
Vdd=24      //V
Idqmax=2.5
Idqmin=1.2
Rs=1        //kΩ
Rd=3        //kΩ
Vdsqmax=Vdd-Idqmax*(Rs+Rd)
Vdsqmin=Vdd-Idqmin*(Rs+Rd)
printf("\n The value of Vdsqmax=%0.3f V" ,Vdsqmax)
printf("\n The value of Vdsqmin=%0.3f V" ,Vdsqmin)
