//chapter 18
//example 18.8
//page no 581 
clc;
clear;
//given
eta=0.7;
Vbb=20;
VR1=eta*Vbb;
I1=2;//mA
R1=14/I1;
printf("\nR1=%d kohm,use standard value 6.8 kohm",R1);R1=6.8;
R2=(Vbb-14)/I1;
printf("\nR2=%d kohm,use standard value 2.7 kohm",R2);R2=2.7;
Rbb=R1+R2;
Vp=0.7+(Vbb*6.8)/Rbb;
Vv=1;//anode to cathode voltage drop
printf("\nVp=%d V",Vp);
printf("\nAnode to cathode voltage drop=%d V",Vv);