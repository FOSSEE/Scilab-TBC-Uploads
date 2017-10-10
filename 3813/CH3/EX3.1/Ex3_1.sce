//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex3_1
clc;
clear;
Rd=2;//Resistance in ohm
Eb=150;//Back emf in V
Vs=400;//Supply voltage in V
Alpha=0.52;//angle in radian
Vdia=((2*sqrt(2)*Vs*cos(Alpha))/%pi);
Id=(Vdia-Eb)/Rd;
Irms=Id/sqrt(2);
disp(Id,"Current in the load in A is:")
