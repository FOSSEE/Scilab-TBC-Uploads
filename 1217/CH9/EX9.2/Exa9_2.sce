//Exa 9.2
clc;
clear;
close;
//given data
Vreg=8;//in volts as IC 7808 is given
IL=100;//in mA
IR=100;//in mA
Iq=0;//in mA
RL=50;//in ohms
// let find the value of resistor to deliver required current
R=Vreg/(IR*10^-3);// in ohms; so current must be in amperes
disp(R,"Required Resistance in ohms : ");
disp("output is given by: Vo = IR*R+IL*RL");
Vo = (IR*10^-3)*R+(IL*10^-3)*RL;
disp(Vo);
//considering 2 volt dropout
Vdropout=2;//in volts
VI=Vo+Vdropout;
disp(VI,"Input voltage must be(in volts): ");


