//Example No. 6.2.3
clc;
clear;
close;
format('v',5);
//E=cos(fi)+sin(fi)<si;
//En=cos(%pi/4+%pi*cosd(fi)) as 2*E0=1
fi=[0 30 60 90 120 150 180 210 240 270 300 330];//degree(Angle)
si=%pi/2*(cosd(fi)+1);//(Phase)
En=cos(%pi/4+%pi*cosd(fi));//Normalized field
disp("Different values of fi : ");
disp(string(fi));
disp("Corresponding normalized field is : ");
disp(string(abs(En)));
//Answer in the book is wrong.
