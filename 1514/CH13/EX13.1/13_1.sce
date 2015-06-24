//chapter 13
//example 13.1
//page 396
clear all;
clc ;
//given
Rc=10;//collector resistors
Re=3.9;//emitter resistor
Vcc=12;Vee=-12;//dual supply
Vbe=0.7;
Vb4=-3.5;//Q4 base voltage with respect to ground
VB4=Vb4-(Vee);//voltage at base of transistor 4
Ie=(VB4-Vbe)/Re;//emitter current
printf("\nemitter current through Q4= %d mA",Ie);
Ie2=Ie/2;
Ie1=Ie2;
Ic1=Ie1;
Ic2=Ie2;
printf("\nemitter currents through Q1&Q2= %d mA",Ie1);
printf("\ncollector currents through Q1&Q2= %d mA",Ic1);
Vc2=Vcc-Ic1*Rc;
Vc1=Vc2;
printf("\nvoltage across collectors of transistors Q1&Q2 = %d V",Vc1)
