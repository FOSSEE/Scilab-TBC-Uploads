// Exa 8.4
clc;
clear;
close;
// given data 
disp("We have : ");
disp("Io1=gm1*(V1-Vdash)");
disp("We also have Io1=s*CVo");
disp("Io2=gm2*Vo and Io3=-gm3*Vdash");
disp("Now we have : s*CVo=gm1*(V1-Vdash)");
disp("or V1-Vdash=s*CV0/gm1 or Vdash=V1-s*CV0/gm1");
disp("So we have :  Io3=-gm3*(V1-s*CV0/gm1)");
disp("Also Io2=-Io3 or Io3=-gm2*Vo");
disp("So we have -gm2*Vo=-gm3*((gm1*V1-s*C*Vo)/gm1)");
disp("or gm1*gm2*Vo+gm3*s*C*Vo=gm1*gm3*V1");
disp("Arranging terms to get Vo/V1 we have : ");
disp("Transfer Function : V0/V1=(gm1*gm3)/(gm1*gm2+s*C*gm3)");