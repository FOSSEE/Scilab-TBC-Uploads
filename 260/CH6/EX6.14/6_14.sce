//Eg-6.14
//pg-304           

clear
clc

//mean and standard deviation are given as
x=1.011;
s=.108;

n=500;
a=1;

d=(x-a)/(s/n^.5);
if d<=1.96 & d>=-1.96 then
    disp("null hypothesis :Ho:u=1mm is accepted")
else
    disp("the value of d lies outside range.Therefore we will reject HO at 0.05 level of significance")
end


