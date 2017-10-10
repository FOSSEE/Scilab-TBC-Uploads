//Eg-6.15
//pg-306           

clear
clc
n=10;
data=[4.5;6.7;5.5;7.2;4.3;4;5.2;6.3;6.5;7];
m=mean(data);
s=st_deviation(data);
a=5;

d=(m-a)/s*(n-1)^.5;
if d<=2.26 & d>=-2.26 then
    disp("null hypothesis :Ho:u=5mm is accepted.Therfore professors hypothesis is correct")
else
    disp("the value of d lies outside range.Therefore we will reject HO at 0.05 level of significance")
end
