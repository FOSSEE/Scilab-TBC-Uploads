//Chapter-1, Example 1.21, Page 1.49
//=============================================================================
clc
clear

//INPUT DATA
V=220;//Terminal voltage in V
Io=4;//No load current in A
No=800;//No load speed in rpm
IL=24;//Load current in A
Ra=0.25;//Armature resistance in ohm
Rsh=220;//Shunt field resistance in ohm
No=800;//No load speed in rpm

//CALCULATIONS
Ish=(V/Rsh);//Field current in A
Iao=Io-Ish;//Armature current at no load in A
IaL=IL-Ish;//Armature current at load in A
Nl=(No*((V-(IaL*Ra))/(V-(Iao*Ra))));//Speed at load in rpm

//OUTPUT
mprintf('Speed of the motor at load is %3.0f rpm',Nl)

//=================================END OF PROGRAM==============================
