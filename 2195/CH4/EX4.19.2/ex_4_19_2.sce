//Example 4.19.2: current
clc;
clear;
close;
//given data :
gm=0.005;//in mho
V1=1//in V
rd=200*10^3;// in Ohm
Rd=15*10^3;//in ohm
Rm=75;//in ohm
V=[0.2,0.4,0.6,0.8,1];// IN VOLTS
for i=1:5
    I(i)=(gm*V(i)*((Rd*rd)/(rd+Rd)))/((2*((Rd*rd)/(rd+Rd)))+Rm);
    disp(I(i)*10^3,"current in mA for voltage "+string(V(i))+" volts")
end

