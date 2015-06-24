clear;
clc;

//Example 2.1
//Caption : Program to find Energy in a Waterfall


//Given values
H=100;//height=100m
M=1;//Mass of water=1Kg
g=9.8066;//Acceleration due to gravity(m/s^2)

//Solution

//Del(Energy of the system)=0
//hence,del(U)+del(KE)+del(PE)=0

//(a)
PE1=M*H*g;//(J)
disp('J',PE1,'(a)Potential energy of Water at the Top');

//(b)
del_U=0;
KE1=0;
PE2=0;
KE2=PE1;//(J)
disp('J',KE2,'(b)Kinetic energy of Water');

//(c)
del_U=KE2;
disp('J',del_U,'(c)Change in Internal energy when 1kg Water added');

//End