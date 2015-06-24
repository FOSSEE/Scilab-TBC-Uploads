//Part B Chapter 3 Example 1
clc;
clear;
close;
format('v',6);
AB=160;//mm
AC=200;//mm
BF=25;//mm
CD=25;//mm
A=AB*BF+CD*(AC-BF);//mm^2
//Distance of G from AB
ybar=(AB*BF*CD/2+CD*(AC-BF)*((AC-BF)/2+CD))/A;//mm
disp(ybar,"Distance of G from AB(mm)");
//Distance of G from CD
CG=AC-ybar;//mm
disp(CG,"Distance of G from CD(mm) :   ");
