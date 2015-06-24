//chapter 20
//example 20.1
//page 636
clear all;
clc ;
//given
C1=150;C2=60//capacitance from abrupt junction device characteristics at 1,10V resp in pF
//capacitance tunning ratio for abrupt junction device 
TR=C1/C2;
printf("\ncapacitance tunning ratio for abrupt junction device is %.1f ",TR)
C3=220;C4=15//capacitance from hyperabrupt junction device characteristics at 1,10V resp in pF
//capacitance tunning ratio for hyperabrupt junction device 
TR=C3/C4;
printf("\ncapacitance tunning ratio for hyperabrupt junction device is %.1f ",TR)

