//chapter 16
//example 16.8
//page 490
clear all;
clc ;
//given
Vs=20;//supply voltage
Vo=12;//op voltage
Ilmax=40;//maximum load current mA
Vz=Vo/2;
printf("\nSuitable device is 1N753,from datasheet")
Vz=6.2;//nominal voltage
//to keep D1 in breakdown
IR2=10;//mA
R2=1000*(Vo-Vz)/IR2;
printf("\nR2=%d ohm,standard value 560 ohm",R2);
IE1max=Ilmax+IR2;
//power dissipation in Q1
P1max=IE1max*(Vs-Vo);
VCE1max=Vs;
IC1max=IE1max;
//choosing suitable transistor and finding it's hfemin at IC=50mA
hfemin=50;
IB1max=IE1max/hfemin;
//IC2>>IB1max,let
IC2=5;
VB1=Vo+0.7;
R1=(Vs-(VB1))/(IC2+IB1max);
R1=R1-0.01;
printf("\nR1=%.2f kohm,standard value 1.2 kohm",R1);
IE2=5;IR2=10;
Iz=IE2+IR2;
//I4>>IB2,let
I4=1;
R4=(Vz+0.7)/I4;
printf("\nR4=%.1f kohm,standard value 6.8 kohm",R4);
R3=(Vo-6.9)/I4;
printf("\nR3=%.1f kohm,standard value 4.7 or 5.6 kohm for Vo<12 or Vo>12 resp",R3);







