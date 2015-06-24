//chapter 5
//example 5.3
//page 426
clear;
clc;
disp("example 5.3");
printf("\n");
slots=48;      //number of slots
poles=4;       //4-pole machine
ph=3;          //3-phase machine
SA=360/slots;  //slot angle
printf("total number of slots= %d\n",slots);
printf("slot angle= %f degree mechanical\n",SA);
//coil span is 11 slot pitches
//12 slots subtend 180degress, short pitched by 1 slot 
Bta=1*180/12;
k_p=cosd(Bta/2);
printf("pitch factor=%f",k_p)
