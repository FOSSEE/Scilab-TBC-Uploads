

//example 3.16
//calculate 
//discharge required at the head
//design discharge
clc;
//Given
CF=0.8;                        //Capacity factory
Tf=13/20;                      //time factor
A=[850 120 600 500 360];      //given values of area
B=[320 90 120 120 120];       //given values of Base period
D=[580 580 1600 2000 600];    //given values of duty at head canal

DS=A(1)/D(1);                 //discharge for sugarcane 
DOS=A(2)/D(2);                //discharge for overlap sugarcane
DW=A(3)/D(3);                 //discharge for wheat
DB=A(4)/D(4);                 //discharge for bajri
DV=A(5)/D(5);                 //discharge for vegetables
DR=DS+DW;
DM=DS+DB;
DH=DS+DOS+DV;
mprintf("Maximum demand is in hot weather");
q=DH/Tf;
D=q/CF;
q=round(1000*q)/1000;
D=round(100*D)/100;
mprintf("\nFull supply discharge at head=%f cumecs",q);
mprintf("\nDesign discharge=%f cumecs.",D);
