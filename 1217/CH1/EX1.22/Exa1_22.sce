//Exa 1.22
clc;
clear;
close;
//given data
I4=600;//in uA
I2=10;//in uA
I3=20;//in uA
VCC=10;//in volts
VEE=-10;//in volts
VBE=0.7;//in volts
VEB=0.7;//in volts
disp("On examine tthe given circuit, we observe that : ")
disp("IR=I1=I3");
disp("I2=2*IR");
disp("I4=3*IR");
IR=I4/3;//in uA
I2=2*IR;//in uA
I1=IR;//in uA
I3=IR;//in uA
R=(VCC-VEB-VBE-VEE)/(IR*10^(-3));//in kohm
disp(IR,"IR in uA is : ");
disp(I1,"I1 in uA is : ");
disp(I2,"I2 in uA is : ");
disp(I3,"I3 in uA is : ");
disp(R,"R in kohm is : ");