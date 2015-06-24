//Example 7.2 // resolution
clc;
clear;
close;
//given data :
l=50; // a linear resistance potentiometer lenth in mm
r=10000; // resistance in ohm
rmin=10; // minimum measurable resistance in ohm
r1=3850; //  `case 1 in ohm
r2=7560; // case 2 in ohm
R1=r/2; // in ohm
R2=r/l; // in ohm/mm
Rc=R1-r1;
D1=Rc/R2;
Rd=r2-R1; // opposite direction in ohm
D2=Rd/R2;
R=rmin/R2;
disp(D1,"displacement in case 1 ,D1(mm) = ")
disp(D2,"displacement in case 2,D2(mm) = ")
disp(R,"resolution,R(mm) = ")
