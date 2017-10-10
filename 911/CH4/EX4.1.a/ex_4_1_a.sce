//example 4.1(a)//
//the average power dissipation of a single NAND gate//
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
//t(pLH)=t(pHL) in mA//
disp('average supply current = ')
s=(i+j)/2;
u=5*s/4;
disp('mA',s)
disp('average power dissipation for one gate (in mW) is: ')
disp(u)