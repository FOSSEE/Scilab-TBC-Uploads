//Exa 7.13
clc;
clear;
close;
//Given data : 
format('v',7);
VL=240;//in volt
Router=0.2;//in ohm
I1=VL/5;//in Ampere
I2=VL/6;//in Ampere
Ineutral=I1-I2;//in Ampere
//Applying KVL on +ve side
V1=VL+I1*0.2+8*0.4;//in volt
disp(V1,"Voltage at +ve side(in V): ");
//Applying KVL on +ve side
V2=VL-(8*0.4)+I2*0.2;//in volt
disp(V2,"Voltage at -ve side(in V): ");