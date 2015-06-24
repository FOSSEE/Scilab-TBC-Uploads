//chapter 4
//example 4.1
//page 102
clear all;
clc ;
//given
Rc=9;//collector resistance in kohm
Ic1=0;//collector current
Vcc=20;//supply voltage
Vce1=Vcc;//point A(Vce,Ic)=(20,0)
Vce2=0;//collector to emitter voltage V
Ic2=Vcc/Rc;//mA
//point F(Vce2,Ic2)
plot([Vce1 Vce2],[Ic1 Ic2],'-.*');
xtitle('dc load line','Vce in V','Ic in mA');
a=gca();
a.data_bounds=[-1 -0.5;21 3]
printf('dc load line passes through points A(20,0),F(0,2.2)')



