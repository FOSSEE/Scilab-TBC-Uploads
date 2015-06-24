clc
clear

//input
n1=200;//number of armature conductors
i=5;//current capability of each conductor in amperes
n2=4;//number of poles in the machine
e=1;//e.m.f. induced in each pole in volts

//calculations
//for a wave winding
n3=2;//number of parallel paths
n4=n1/n3;//number of conductors per path
e1=e*n4;//e.m.f of the machine in volts
i1=n3*i;//current capacity in amperes
op1=i1*e1;//output of the machine in watts
//for a lap winding
n5=n2;//number of parallel paths=number of poles
n6=n1/n5;//number of conductors per path
e2=n6*e;//e.m.f. of the machine in volts
i2=n5*i;//current capacity in amperes 
op2=i2*e2;//output of the machine in volts

//output
mprintf('the output of the machine if armature is wave wound is %3.3f W and lap wound is %3.3f W',op1,op2)
