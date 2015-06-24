// Exa 5.7
clc;
clear;
close;
// Given data
R1= 50;// in kohm
// Let us choose
R3= 15;// in k ohm
R4= R3;
// Ad= 1+2*R2/R1             (i)
// Ad= ((1+2*R2/R1)*(V2-V1))/(V2-V1)= 1+2*R2/R1
// For minimum differential voltage gain
Ad_min=5;
Ad= Ad_min;
R1_max= R1;// since Ad will be minimum only when R1 will be maximum
// Putting values of Ad and R1 in eq(i)
R2= (Ad-1)*R1/2;// in k ohm
// For maximum differential voltage gain
Ad_max=200;
Ad= Ad_min;
// Putting values of Ad and R2 in eq(i)
R1= 2*R2/(Ad-1);// in k ohm
R1=floor(R1);
// For maximum value of Ad, R1 will have minimum value , therefore
R1_min= 1;// in kohm
disp("Value of R1_min is : "+string(R1_min)+" k ohm");
disp("Value of R1 is     : "+string(R1)+"-50 k ohm");
disp("Value of R2 is     : "+string(R2)+" k ohm");
disp("Value of R3 is     : "+string(R3)+" k ohm");
disp("Value of R4 is     : "+string(R4)+" k ohm");

