//chapter 7
//example 7.1
//page 196
clear;
clc ;
//given
Vce=20;  //collector to emitter voltage in volts
T=125 ; //temperature in degreeC
excessT=T-25; 
D=2.81*excessT; //derating in power of device in mW

//maximum power dissipation in mW
PD=310-D; //from datasheet of 2N3904

//max collector current in mA
Ic=PD/Vce; 

printf('maximum Ic that can be used is %.2f mA',Ic);
