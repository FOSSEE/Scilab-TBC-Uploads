//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 3
//example 3.13
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
d=.25;                         //duty ratio
Vdc=150;                      //source voltage in volts
Vab=((2*d)/3)^(1/2)*Vdc;     //rms voltage applied to the motor winding with FWM
disp(Vab,'The rms voltage applied to the motor winding with FWM in volts is:')
Vab1=(Vab/d^(1/2));         //rms voltage applied to the motor winding without FWM
disp(Vab1,'The rms voltage applied to the motor winding without FWM in volts is')
