//chapter 4
//example 4.12
//page 128
clear all;
clc ;
//given
Rc=2.2;Re=2.7;
Vcc=20;//supply voltage V
R1=18;R2=8.2;
Vbe=0.7;
//total dc load
R=Rc+Re;
//dc load line
Ic1=0;
Vce1=Vcc;//point A
Vce2=0;
Ic2=Vcc/(R);
plot([Vce1 Vce2],[Ic1 Ic2],'-.*');
xtitle('dc load line','Vce in V','Ic in mA');
a=gca();
a.data_bounds=[-0.5 -0.5;21 5]

Vb=(Vcc*R2)/(R1+R2);
Vb=6.3;
Ie=(Vb-Vbe)/Re;
Ic=Ie;//Q point Ic=2.07
printf("\nQ point is at Ic=%.2f mA",Ic);

//ac load line
//total ac load=Rc
deltaIc=1;//mA
deltaVce=-(deltaIc*Rc);
printf("\ndeltaVce=%.1f V for deltaIc = 1 mA",deltaVce);
printf("\npoints Q and ( deltaVce,deltaIc) constitute ac load line");







