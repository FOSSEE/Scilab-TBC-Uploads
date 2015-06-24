//calculating the maximum position deviation, resistance deviation 
clc;
Pl=0.001;
FSD=320;
R=10000;
MDD=(Pl*FSD);
disp(MDD,'Maximum displacement deviation(degree)=');
MRD=Pl*R;
disp(MRD,'Maximum displacement deviation(ohm)=');
