//Example 1_9 page no:26
clc;
V=30;
R1=2;
R2=2;
R3=2;
R4=2;
R5=1;
R6=1;
R7=2;
R8=2;
R9=4;
R10=R2+R3;
R11=R4+R3;
R12=1/((1/R10)+(1/R9));
R13=1/((1/R11)+(1/R8));
R14=1/((1/(R12+R13))+(1/R7));
Rt=1/((1/(R14+R6))+(1/R1));
I=V/Rt;
disp(I,"the current delivered by the sourve is (in A)");
//in text book Rt value is rounded to 1.05 here the value is not rounded so result varies slightly
