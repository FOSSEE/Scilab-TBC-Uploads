//Find the value of R1 needed to bias the circuit so that VCEQ2 = 6V. (b) with R1 as found in part a, find VCEQ1.
//Solved Example Ex3.20 page no 91  
clear
clc
b=50
b2=50
Vce=6       //V
Re=1        //kΩ
Vcc=12//v   //V
Ieq2=(Vcc-Vce)/Re
printf("\n  Ieq2 = %0.2f  mA",Ieq2)
Ibq2=(Ieq2/((b+1)*(b2+1)))*1000
printf("\n  Ibq2 = %0.2f  mA",Ibq2)
