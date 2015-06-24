//Example 2.27: Sensitivity
clc;
clear;
close;
//given data :
I1=0.1;// in mA
R1=50;// in ohm
I2=10;// in mA
I3=10.1;// in mA
I4=I2-I1;
Rsh=I1*R1/(I3-I1);
Im1=Rsh*I4/(R1+Rsh);
S1=(I1-Im1)/(I3-I4);
disp(S1,"(a). The sensitivity of an instrument,S1 = ")
I5=10;// in mA
V=2;// in Volt
R=V/(I5*10^-3);
disp(R,"(b). The resistance,R(ohm) = ")
// formula : Im=((I3-Im)*(R-V))/R1;
Im2=(0.8*I3)-8;
Im3=(0.8*I4)-8
S2=(Im2-Im3)/(I3-I4);
S=S1/S2;
disp(S,"The relative sensitivity,S = ")
