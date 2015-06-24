clc
clear

//input
n1=480;//number of conductors in the armature
n2=6;//number of poles in the machine
w=100;//angular velocity in rad/s
phi=0.03;// flux per pole in weber

//calculations
phi1=n2*phi;//flux cut by each conductor in weber 
e1=(phi1*w)/(2*%pi);//e.m.f. induced/conductor in volts
n3=n2;//number of parallel paths
n4=n1/n3;//number of conductors per path
e2=e1*n4;//e.m.f. per path in volts

//output
mprintf('the e.m.f. induced in the armature is %3.0f V',e2)
