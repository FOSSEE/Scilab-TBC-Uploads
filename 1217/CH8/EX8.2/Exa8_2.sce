// Exa 8.2
clc;
clear;
close;
// given data 
disp("We have : ");
disp("Io1=gm1*(V1-Vo)");
disp("Io2=gm2*(V1-Vo)");
disp("But Vc=Io1/s*C1");
disp("So Io2=gm2(Io1/s*C1-Vo)")
disp("We also have : Io2=(Vo-V1)*s*C2");
disp("Substituting for Io1 gives :");
disp("gm2*((gm1*(V1-Vo)-s*C1*Vo)/s*C1=(Vo-V1)/s*C2)");
disp("gm1*gm2*V1-gm1*gm2*Vo-gm2*s*C1*Vo=s^2*C1*C2*Vo-s^2*C1*C2*V1");
disp("Arranging terms to get Vo/V1 we have : ");
disp("Transfer Function : V0/V1=(s^2*C1*C2+gm1*gm2)/(s^2*C1*C2+sgm1*C1+gm1*gm2)");