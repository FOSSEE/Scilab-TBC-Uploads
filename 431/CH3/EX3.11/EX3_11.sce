//Calculating equivalent impedence referred to primary
//Chapter 3
//Example 3.11
//page 212
clear;
clc; 
disp("Example 3.11")
kVA=100;                //rating of the tronsfromer
N1=400;                   //number of primary turns
N2=80;                    //number of secondary turns
R1=0.3;                    //primary resistance in ohms
R2=0.01;                    //secondary resistance in ohms
X1=1.1;                        //primary leakage reactance in ohs
X2=0.035;                     //secondary leakage reactance in ohms
Rr2=(((N1/N2)^2)*R2)
printf("R2=%f ohms",Rr2);
Xx2=(((N1/N2)^2)*X2);
printf("\nX2=%f ohms",Xx2);
Ze=sqrt((R1+Rr2)^2+(X1+Xx2)^2);
printf("\nEquivqlent impedence=%f",Ze);