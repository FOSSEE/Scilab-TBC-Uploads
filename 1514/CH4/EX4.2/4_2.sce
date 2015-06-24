//chapter 4
//example 4.2
//page 104
clear all;
clc ;
//given
Rc=2.2;//collector resistance in kohm
Vcc=18;//supply voltage
Ib=40;//base current in microA
Ic1=0;//collector current
Vce1=Vcc;//point A(Vce,Ic)=(18,0)
Vce2=0;//collector to emitter voltage V
Ic2=Vcc/Rc;//mA
printf('dc load line passes through points A(18,0),B(0,8.2)')
//point B(Vce2,Ic2)
plot([Vce1 Vce2],[Ic1 Ic2],'-.*');
xtitle('dc load line','Vce in V','Ic in mA');
a=gca();
a.data_bounds=[-0.5 -0.5;19 8.5]

//from intersection of dc load line and Ib=40microA,pointQ
Ic=4.25;//mA
Vce=8.7;//V
//for point Q1
Vce1=1.2;
deltaVce1=Vce1-Vce;
//for point Q2
Vce1=16.7;
deltaVce2=Vce1-Vce;
printf("\n maximum undistorted output is +-7.5 V")

