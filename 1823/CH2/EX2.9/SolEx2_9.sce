//Use the small-signal technique to find iD and vD
//Solved Example Ex2.9 page no 52
clear
clc
printf("\n Use the small-signal technique to find iD and vD")
Idq=5//mA
Vdq=0.75//V
vh=0.05//cos wt
Rth=50      //kΩ
rd=50
rd=(0.7-0.5)/0.004
printf("\n rd= %d ohm",rd)
id=(vh/(Rth+rd))*1000
vd=(rd*id)/1000//cos wt V
printf("\n id= %0.1f cos wt mA",id)
printf("\n vd= %0.3f cos wt V",vd)
printf("\n iD = Idq + id = 5+0.5 cos wt mA")
printf("\n vD = Vdq + vd = 0.75+0.025 cos wt V")
