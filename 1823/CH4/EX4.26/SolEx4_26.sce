//Calculate the plate efficiency of the amplifier
//Example 4.26 page no 130

clear
clc
Ip=(1/20)       //mA
Rl=10           //kΩ
Vpp=2.4         //v
n=(((Ip)*Rl)/Vpp)
printf("\n  the perveance  n=%0.3f percent" ,n)

