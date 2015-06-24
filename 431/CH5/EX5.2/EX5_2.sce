//chapter 5
//example 5.2
//page 425
clear; 
clc;
disp("example 5.2")
printf("\n");
slots=36;    //number of slots
poles=4;     //number of poles
ph=3;        //single layer three phase winding
SP=slots/ph; //number of slots per phase
printf("number of slots per phase= %d\n",SP);
m=SP/poles;  //munber of slots per pole per phase
printf("number of slots per pole per phase,m=%d\n",m)
SA_m=360/slots;        //slot angle mechanical
SA_e=(poles/2)*SA_m    //slot angle electrical 
printf("slot angle= %d degree electrical\n",SA_e)
k_d=sind((m*SA_e)/2)/(m*sind(SA_e/2));
printf("distribution factor= %f",k_d)