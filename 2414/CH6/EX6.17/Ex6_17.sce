clc;
close();
//page no 210
//prob no. 6.17
//All power in Watts
//All voltage in volts
//All current in ampere
R=50;   
m=0.5;
P=1125;  //for m=0.5
Vrms=sqrt(R*P);
Irms=sqrt(P/R);
disp('A',Irms,'V',Vrms,'(a)  For m=0.5, Vrms and Irms are:');
m=1;
P=1500;  //For m=1
Vrms=sqrt(R*P);
Irms=sqrt(P/R);
disp('A',Irms,'V',Vrms,'(b)  For m=1, Vrms and Irms are:');
