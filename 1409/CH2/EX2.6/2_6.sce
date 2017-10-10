clc;
//page no: 2-14
//Example-2.6
//Given Total antenna current is 5A, and modulation index is 0.6
Itotal=5;
u=0.6;
//Itotal=Ic*sqrt(1+(u^2/2));
Ic=Itotal/sqrt(1+(u^2/2));
disp(+'A',Ic,'Antenna current when only carrier is sent is ');
