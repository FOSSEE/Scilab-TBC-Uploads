//Chapter-1, Example 1.21, Page 1.49
//=============================================================================
clc
clear

//INPUT DATA
V=220;//Terminal voltage in V
P=(10*746);//Rating of the motor in W
Iao=5;//No load armature current in A
No=1200;//No load speed in rpm
Ra=0.3;//Armature resistance in ohm
Ial=35;//Armature load current in A

//CALCULATIONS
Nl=(No*((V-(Ial*Ra))/(V-(Iao*Ra))));//Speed at load in rpm
Ebo=218.5;//Back emf at no load in V
EbL=209.5;//Back emf at full load in V
Tao=(9.55*Ebo*Iao)/No;//No load torque in N.m
TaL=(9.55*EbL*Ial)/Nl;//Load torque in N.m

//OUTPUT
mprintf('Load speed is %3.0f rpm \n Load torque is %3.2f N.m',Nl,TaL)

//=================================END OF PROGRAM==============================

