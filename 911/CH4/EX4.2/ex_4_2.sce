//example 4.2//
//How many NAND gate inputs can be driven from the output of a NAND gate of this type//
clc
//clears the variables//
clear
//clears the screen//
//given//
a=0.4
//I(oh)max in mA//
b=2.7
//V(oh) min in V//
c=2
//V(ih) min in V//
d=.8
//V(il)max in V//
e=.4
//V(ol) max in V//
f=8
//I(ol)max in mA//
g=.4
//I(il)max in mA//
h=20
//I(ih) max in micro amp//
i=1.6
//I(cch)max in mA//
j=4.4
//I(ccl)max in mA//
t=15
//t(pLH)=t(pHL) in ns//
disp('This figure is given by the worst-case fan-out specification of the device')
s=a*1000/h;
disp(s,'the HIGH-state fan-out=')
u=f/g;
disp(u,'LOW-state fan-out=')
z=min(s,u);
disp('Therefore, the number of inputs that can be driven from a single output =')
disp('V',z)