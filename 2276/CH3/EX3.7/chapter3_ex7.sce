clc
clear

//input
n1=4;//number of poles in a d.c. machine
n2=290;//number of conductors in the armature which are connected in lap winding
i=20;//armature current in amperes
t=50;//torque produced in newton meter

//calculations
phi=((t*(2*%pi))/(n2*i))*1000;//required flux per pole in milliweber

//output
mprintf('the required flux per pole is %3.1f mWb',phi)
