//Chapter-1, Example 1.21, Page 1.49
//=============================================================================
clc
clear

//INPUT DATA
V=220;//Terminal voltage in V
ILo=5;//No load current in A
Ra=0.3;//Armature resistance in ohm
Rsh=220;//Field resistance in ohm
IL=50;//Load current in A

//CALCULATIONS
Lo=(ILo*V);//No load losses in W
Ish=(V/Rsh);//Shunt current in A
Iao=(ILo-Ish);//No load armature current in A
Lco=((Iao^2*Ra)+(Ish^2*Rsh));//No load copper losses in W
Ifl=(Lo-Lco);//Iron and friction losses in W
Ia=(IL-Ish);//Armature current in A
Vl=(Ia^2*Ra);//Variable losses in W
Tl=(Vl+Lco+Ifl);//Total losses in W
P=(V*IL);//Input power in W
n=((P-Tl)/P)*100;//Efficiency

//OUTPUT
mprintf('Efficiency of the motor is %3.1f percent',n)

//=================================END OF PROGRAM==============================
