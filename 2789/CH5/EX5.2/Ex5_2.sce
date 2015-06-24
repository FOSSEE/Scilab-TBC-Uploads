clear;
clc;

//page no. 153

p1 = 300;// psia
T1 = 900;// degreeF
p2 = 200;// psia
T2 = 780;// degreeF
H2 = 1414;//Btu/lb
H1 = 1471;// Btu/lb
V2 = sqrt(2*31.1*778*(H1-H2));
printf('T2 = %d degreeF\n V2 = %d fps',T2,V2);
