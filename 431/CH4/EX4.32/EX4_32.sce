//Calculate full load efficiency
//Chapter 4
//Example 4.32
//page 347
clear;
clc; 
disp("Example 4.32")
Vl=415;            //voltage in volts
Il=50;                //line current in amperes
R1=0.5;                //resistrance of stator winding per phase in ohms
pf=0.85;              //power factor
S=0.04;
IFL=(sqrt(3)*Vl*Il*pf)         //input to the motor on full load
printf("Input to the motor on full load=%dW",IFL);
I1=Il/sqrt(3);
SLFL=(3*I1^2*R1)            //Stator I^2R loss on full load
printf("\nStator I^2R loss on full load=%dW",SLFL);
//given ratio of stator core loss friction and windahe loss be r=(r1:r2)
r1=3;
r2=2;
TL=1500;            //total loss
SCL=(r1*TL)/(r1+r2);             //stator core loss
FWL=(r2*TL)/(r1+r2);             //Friction and windage loss
SL=SLFL+SCL;                      //total stator loss
SI=IFL;                            //Stator input
Pa=SI-SL;                            //power transferred through the air-gap=input to the rotor
RI=Pa
RL=S*RI;                           //rotor losses
TRL=FWL+RL;                         //total rotor losses 
OP=RI-TRL;                            //Output power at the shaft
effi=(OP*100)/SI;
printf("\nEfficiency=%f percent",effi)
