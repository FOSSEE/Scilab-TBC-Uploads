clc;
clear all;
V = 1500; // Volume of the room in cubic meters
a1 = 0.8; // Absorption coefficient of ceiling in sabine per square meter
s1 = 140; // Area of ceiling in square meters
a2 = 0.03; // Absorption coefficient of walls in sabine per square meter
s2 = 260; // Area of walls in square meters
a3 = 0.06; // Absorption coefficient of floor in sabine per square meter
s3 = 140; // Area of floor in square meters
T = (0.163*V)/((a1*s1)+(a2*s2)+(a3*s3));
a = (0.163*V)/((s1+s2+s3)*T);
disp('s',T,'The reverberation time is')
disp('Sabine',a,'The average absorption coefficent is')
// Wrong answer printed for reverberation time in textbook..checked in calculator also..
