clc;
//page no:2-27
//Exmaple-2.15
//Given modulation index is 0.5 and antenna current is 12A
u=0.5;
It=12;
Ic=It/sqrt(1+(u^2/2));
disp(+'A',Ic,'Ic=');
U=0.9;
Ic=11.31;
It=Ic*sqrt(1+(U^2/2));
disp(+'A',It,'Antenna current is ');
