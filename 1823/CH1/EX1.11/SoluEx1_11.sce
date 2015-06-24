//Solved Example 1.11 Page no 14
//Find the half-cycle average value of the current through a resistance R 
clear
clc
printf("\n Find the Norton equivalent current IN and admittance YN")
Va=4.0//V
a=0.25//A/V
R1=2//ohm
R2=3//ohm
I=2
Zth=5
Ia=(Va/(R1+R2))+((R1*I)/(R1+R2))
Yn=1/Zth
printf("\n Norton equivalent current IN  is = %.2f V",Ia)
printf("\n admittance YN is = %.2f Ohm",Yn)
