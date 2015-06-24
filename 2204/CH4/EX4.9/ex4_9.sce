//Exa 4.9
clc;
clear;
close;
// Given data
Vin=5;// in V
R1= 1;// in kΩ
R1= R1*10^3;// in Ω
CF= 0.1;// in µF
CF= CF*10^-6;// in F
f= 1;// in kHz
f= f *10^3;// in Hz
T= 1/f;// in sec
delta_Vout= Vin*T/(2*R1*CF);// in V
disp(delta_Vout,"The maximum change in output voltage in volts is : ")
S= 2*%pi*f*Vin;// in V/sec
disp(S*10^-6,"The minimum slew rate required in V/micro-sec is : ")
