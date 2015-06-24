//Calculate power developed and efficiency
//Chapter 4
//Example 4.12
//page 308
clear;
clc; 
disp("Example 4.12")
S=0.03;                //slip
SI=50;                //stator input in kilowatts
SL=2;                //stator loss in kilowatts
RI=SI-SL;            //rotor input in kilowatts
RIL=S*RI;              //rotor I^2R loss
//rotor core loss can be neglected at 3percent slip
PDR=RI-RIL;            //power developed by the rotor
printf("Power developed by the rotor=%fkW",PDR);
FWL=1;                //friction and windage loss in kilowatt
OP=PDR-FWL;            //output power
printf("\nOutput power=%fkW",OP);
effi=(OP*100)/SI;
printf("\nEfficiency of the motor=%f percent",effi)



