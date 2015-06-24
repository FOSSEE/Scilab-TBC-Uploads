//Exa 7.8
clc;
clear;
close;
//Given data : 
format('v',6);
VB=200;//in volts
R=0.2;//in ohm/km
X=0.3;//in ohm/km
I=100;//in Ampere
ZAB=(R+%i*X);//in ohm
ZMB=ZAB/2;//in ohm
ZAM=ZMB;//in ohm
cosfi_1=0.6;//unitless
cosfi_2=0.8;//unitless
IMB=I*(cosfi_2-%i*cosfi_1);//in A
I2=IMB;//in Ampere
VMB=IMB*ZMB;//in volts
VM=VB+VMB;//in volts
disp(VM,"Voltage at M(in volt)");
fi=atand(imag(VM)/real(VM));//in degree
fi_1=acosd(cosfi_1);//in degree
fi_VBandI1=fi_1-fi;//in degree
I1=I*(cosd(fi_VBandI1)-%i*sind(fi_VBandI1));//in Ampere
IAM=I1+I2;//inA Ampere
VAM=ZAM*IAM;//in volts
VA=VM+VAM;//in volts
magVA=sqrt(real(VA)^2+imag(VA)^2);
disp(magVA,"Voltage at A, standing end voltage(in volts) :");