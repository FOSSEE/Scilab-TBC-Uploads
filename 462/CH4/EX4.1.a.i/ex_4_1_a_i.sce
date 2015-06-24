//example 4.1(a)//
clc
//clears the screen//
clear
//clears already existing variables//
disp('as given low level, V(o)=0.2V and high level, V(1)=5V')
disp('case 1, when all the inputs are HIGH')
//in this case both diodes will be conducting and transistor will be in saturation//
a=0.7+0.7+0.8;
//V(p)//
b=5;
//high level voltage in volts//
c=5;
//resistor in Kohms//
d=0.8;
//voltage between base and emitter in volts//
e=(b-a)/c;
//I(1)//
f=d/c;
//I(2)//
i=e-f;
//writing kirchoff's current law at the base of transistor//
g=0.2;
//voltage between collector and emitter in saturation(in volts)//
h=2.2;
//resistance of collector in Kohms//
j=(b-g)/h;
//collector current without load gate connected//
disp('I(1) in mA:')
disp(e)
disp('I(2) in mA:')
disp(f)
disp('collector current(in mA):')
disp(j)
k=30;
//h(FE)//
s=k*i;
if(s>j)
disp('transistor is in saturation mode')
disp('fan out is given by I(c)<=h(FE)I(B)')
end