//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex2_1.sce.

clc;
clear;
R1=3;    //Resistance in ohm
R2=5;    //Resistance in ohm
R3=4;    //Resistance in ohm
R4=8;    //Resistance in ohm

I2=1/3;
I1=4*I2;
I3=I1-I2;;
V1=R1*I1;                     //Applying ohm's law(V=IR)
V2=R2*I1;
V3=R3*I2;
V4=R4*I3;
printf("\n The unknown voltages:")
printf("\n\t V1=%d V",V1)
printf("\n\t V2=%1.2f V",V2)
printf("\n\t V3=%1.2f V",V3)
printf("\n\t V4=%d V \n",V4)
printf("\n The unknown currents:")
printf("\n\t I1=%1.2f A",I1)
printf("\n\t I2=%1.2f A",I2)
printf("\n\t I3=%d A",I3)

