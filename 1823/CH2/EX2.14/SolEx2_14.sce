//Find the percentage change in the average value of vL over the range of load variation,
//Solved Example Ex2.14 page no 56
clear
clc
Rl=10//Ω
Rs=10//Ω
Vs=10//v
Vl=(Rl/(Rl+Rs))*Vs      //V
printf("Vl = %0.3f",Vl)
Vl01=2.5//V
printf("\n For Rl=1000")
Rl=1000
Vs=10
Rs=10
Vl=(Rl/(Rl+Rs))*Vs
printf("\nVl = %0.3f",Vl)
Vl02=4.9//V
Reg=((Vl02-Vl01)/Vl01)*100
printf("Reg = %0.3f",Reg)
