//Solved Example 1.3 Page no 5
//Find the Thevenin equivalent voltage VTh and impedance ZTh
clear
clc
printf("\n Find the Thevenin equivalent voltage VTh and impedance ZTh")
Va=4//V
Ia=2//A
R1=2//ohm
R2=3//ohm
Vth=Va+Ia*R1
Zth=R1+R2
printf("\n Thevenin equivalent voltage VTh  is = %.2f V",Vth)
printf("\n Impedance ZTh is = %1.1f Ohm",Zth)
