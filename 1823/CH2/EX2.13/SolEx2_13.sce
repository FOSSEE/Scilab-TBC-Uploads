//Find the regulation of vo when Vb increases from its nominal value of 4V to the value 6 V.
//Solved Example Ex2.13 page no 55
clear
clc
Vf1=1//v
Vf2=2//v
Rf1=100//Ω
Rf2=200//Ω
Vb1=4//v
Vb2=6//v
R=2000
V01=Vf2+((Vb1-Vf1-Vf2)*Rf2)/(R+Rf1+Rf2)
V02=Vf2+((Vb2-Vf1-Vf2)*Rf2)/(R+Rf1+Rf2)
Reg=((V02-V01)/V01)*100
printf("V01 is %0.3f and %0.3f",V01,V02)
printf("Reg = %0.3f",Reg)
