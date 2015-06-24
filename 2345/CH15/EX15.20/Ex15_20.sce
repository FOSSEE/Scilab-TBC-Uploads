//Finding current
//Example 15.20(pg. 405)
clc
clear
//Let current in XA=I, in XY=I1, in AY=I-40, in YB=I-40+I1-60, in BX=I+I1-150.
//By Kirchhoff's second law, in circuit XAYA I-I1=20
// and in circuit XAYBX 25I+15I1=1950
I1=(1950-500)/(15+25)//in Amperes
printf('Thus the current in branch XY is I1=%2.2f Amps',I1)
