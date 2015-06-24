//Solved Example 1.4 
//Page no 6
//Findthe Thevenin equivalent voltage VTh and impedance ZTh
clear
clc
printf("\n Find the Thevenin equivalent voltage VTh and impedance ZTh")
Va=4//V
a=0.25//A/V
R1=2//ohm
R2=3//ohm
Vth=Va/(1-a*R1)
Vdp=R1+R2
Idp=1-a*R1
Zth=Vdp/Idp
printf("\n Thevenin equivalent voltage VTh  is = %.f V",Vth)
printf("\n Impedance ZTh is = %.f Ohm",Zth)
