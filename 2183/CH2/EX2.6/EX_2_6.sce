// Example 2.6: compare acceptance angle
clc;
clear;
close;
NA=0.4;// numerical aperture
r2=100;//angle at which rays change dirction
r=r2/2;//in degree
Oa=asind(NA);//ACCEPTANCE ANGLE
oa=floor(Oa);//
x=Oa-oa;//
Oas=asind(NA/cosd(r));//ACCEPTANCE ANGLE for skew rays in degree
oas=floor(Oas);//
xs=Oas-oas;//
disp("ACCEPTANCE ANGLE IS "+string(oa)+" DEGREE AND "+string(round((60*(x))))+" MINUTES ")
disp("ACCEPTANCE ANGLE FOR MEIDONAL RAYS IS "+string(oas)+" DEGREE AND "+string(round((60*(xs))))+" MINUTES ")

