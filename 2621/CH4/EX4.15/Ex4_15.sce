// Example 4.15
clc;
clear;
close;
format('v',6);
// Given data
R1= 50;// in kΩ
R3=15;// in kΩ
R4=R3;// in kΩ
// For minimum differential voltage gain,
Ad_min= 5;// and
Ad= Ad_min;
// From Ad= 1+2*R2/R1
R2= (Ad-1)*R1/2;// in kΩ
// For maximum differential voltage gain,
Ad_max= 200;// and
Ad= Ad_max;
// From Ad= 1+2*R2/R1
R1_min= round(2*R2/(Ad-1));// in kΩ
disp("The value of R1 :  "+string(R1_min)+" kΩ - "+string(R1)+" kΩ")
disp(R2,"The value of R2 in kΩ is : ")
disp(R3,"The value of R3 and R4 in kΩ is : ")


