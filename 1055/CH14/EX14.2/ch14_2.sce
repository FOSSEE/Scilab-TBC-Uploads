// To determine the phase shifting network to be used.
clear
clc;
Z=1000*(cosd(60) + %i*sind(60));//impedence
X=tand(50)*1000*cosd(60);
Xl=1000*sind(60);
Xc=Xl-X;
C=1000000/(314*Xc);
//Answers don't match due to difference in rounding off of digits
disp(X,"X=");
disp(Xc,"Xc=");
disp(C,"C(micro farads)=");
