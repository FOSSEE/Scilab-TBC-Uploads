//(a) Find the range of values of IDQ that could be expected in using this FET. (b) Find the corresponding range of VDSQ. (c) Comment on the
//desirability of this bias arrangement.
//Example 5.25 page no 156
clear
clc
Vdd=15
Idqmax=5.5
Idqmin=1.3
Rd=2.5          //kΩ
Vdsqmax=Vdd-Idqmax*Rd
Vdsqmin=Vdd-Idqmin*Rd
printf("\n The value of Vdsqmax=%0.3f V" ,Vdsqmax)
printf("\n The value of Vdsqmin=%0.3f V" ,Vdsqmin)
