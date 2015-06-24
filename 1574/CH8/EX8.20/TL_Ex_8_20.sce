clc
//Chapter8
//Example8.20, page no 352
//Given
V=0.5//receiving vtg
Vs=2//Source vtg
al=-log(V/Vs)//attenuation

al2=al*1.5
V=Vs*%e^-al2//receiving voltage
mprintf('the receiving voltage will be %f V',V)









