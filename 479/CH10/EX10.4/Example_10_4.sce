//Chemical Engineering Thermodynamics
//Chapter 10
//Compressor

//Example 10.4
clear;
clc;

//Given
P1 = 1;//Initial pressure in Kgf/sq cm
Pn = 13;//Final pressure in Kgf/sq cm
V1 =27;//flow rate of gas in cubic meter/min
y = 1.6;//gamma of the gas
n = [1 2 3 4 7 10];//number of stages
mprintf('No of stages             Horse power in hp');
//To Calculate the theoretical horse power required
for i = 1:6
    W(i) = n(i)*(y/(y-1))*((P1*10^4)/4500)*V1*(1-(Pn/P1)^((y-1)/(n(i)*y)));
    mprintf('\n  %d',n(i));
    mprintf('                       %f',-W(i))
end
//end
