//Chapter-1, Example 1.21, Page 1.49
//=============================================================================
clc
clear

//INPUT DATA
V=250;//Terminal voltage in V
IL=50;//Load current in A
N=1000;//Speed in rpm
Wi=1200;//Iron and friction losses in W
Ra=0.05;//Armature resistance in ohm
Rsh=125;//Field resistance in ohm

//CALCULATIONS
Ish=(V/Rsh);//Field current in A
Ia=(IL-Ish);//Armature current in A
Eb=(V-(Ia*Ra));//Back emf in V
Cu=((V*IL)-(Eb*Ia));//Copper losses in W
Ta=(9.55*Eb*Ia)/N;//Armature torque in N.m
Ts=(9.55*((Eb*Ia)-Wi))/N;//Shaft torque in N.m
n=(((Eb*Ia)-Wi)/(V*IL))*100;//Efficiency of the motor

//OPUTPUT
mprintf('(i)Copper loss is %3.1f W\n(ii)Armature torque is %3.1f N.m\n(iii)Shaft torque is %3.2f N.m\n(iv)Efficiency is %3.1f percent',Cu,Ta,Ts,n)

//=================================END OF PROGRAM==============================
