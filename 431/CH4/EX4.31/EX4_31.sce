//Calculate full load rotor loss and rotor input and output torque
//Chapter 4
//Example 4.31
//page 347
clear;
clc; 
disp("Example 4.31")
P=4;                //number of poles
f=50;                //frequency in hertz
V=230;               //voltage in volts
hp=5;                //power in horsepower
Ib=15;                //current in block rotor test in amperes
output=hp*735.5;        //output in watts
//in block rotor test: power input=Full=load I^2R losses=735W
FLl=735;                                //Full-load I^2R losses
printf("Full-load I^2R losses=%fW",FLl);
Re=FLl/(3*Ib^2);
Io=6.3;                //current in no load condition in amperes
lossNL=(3*(Io)^2*Re);    //I^2R loss at no-load condition
printf("\nI^2R loss at no-load=%fW",lossNL);
PiNL=275;                  //power input at no-load
printf("\nCore loss plus friction and windage loss=%dW",(PiNL-lossNL));
TL=FLl+(PiNL-lossNL);
effi=(output*100)/(output+TL);
printf("\nEfficiency=%fpercent",effi)

