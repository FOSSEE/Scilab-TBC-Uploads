//Exa 7.9
clc;
clear;
close;
//given data :
VP=-4;//in Volt
IDSS=10;//in mA
VGS=[0 1 -1 -2 -4];
ID=zeros(1,5);
for i=1:5
    ID(i)=IDSS*(1-VGS(i)/VP)^2;//in mA    
end
plot2d(VGS,ID);