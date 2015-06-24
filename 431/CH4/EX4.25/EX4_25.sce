//Calculate starting current
//Chapter 4
//Example 4.25
//page 321
clear;
clc; 
disp("Example 4.25")
V=400;                //supply voltage in volts
f=50;                    //frequency in hertz
P=4;                  //number of poles
ph=3;                  //three phase supply
S=0.04;
If=30;                 //Full load current in amperes
Isc=6*If;
//let r be the ratio of starting torque nd full load torque, r=Ts/Tf
r=(Isc/If)^2*S;
//Tf=Tm is produced when voltage is Vm
Vm=sqrt(V^2/r);
printf("\nvoltage at maximium torque=%fvolts",Vm);
Is=6*If*(Vm/V);
printf("\nFull-load current at 333.3 volts is=%fA",Is)


