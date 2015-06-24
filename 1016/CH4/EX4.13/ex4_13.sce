clc;clear;
//Example 4.13

//given data
a=3.61*10^-7;//lattice constant in mm

//calcualtions
//for (i) plane (100)
SA=a*a;
tamc=2;//total atoms included according to sketch
ans=tamc/SA;
disp(ans,'atoms per mm^2 for (i)');
//for (ii) plane (110)
A=a*(sqrt(2)*a);
tamc=2;//total atoms included according to sketch
ans=tamc/A;
disp(ans,'atoms per mm^2 for (ii)');
//for (iii) plane (111)
A=0.866*a*a;
tamc=2;//total atoms included according to sketch
ans=tamc/A;
disp(ans,'atoms per mm^2 for (iii)')