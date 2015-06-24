//a) Find the range of IDQ that can be expected if R1 ¼ 1M and R2 ¼ 3M. (b) Find the range of IDQ that can be expected if R1 ¼ 1M
//and R2 = 7M. (c) Discuss the significance of the results of parts a and b.
//Example 5.28 page no 159
clear
clc
Vdd=24
Idqmax=4
Idqmin=2.8
Rs=2        //MΩ
Rd=1        //MΩ
Vdsqmax=Vdd-Idqmax*(Rs+Rd)
Vdsqmin=Vdd-Idqmin*(Rs+Rd)
printf("\n The value of Vdsqmax=%0.3f V" ,Vdsqmax)
printf("\n The value of Vdsqmin=%0.3f V" ,Vdsqmin)
