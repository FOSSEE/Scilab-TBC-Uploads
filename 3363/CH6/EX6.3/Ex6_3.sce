//Example 6.3, page 216
clc
v=50//in Mev
E=55//in Mev
x=sqrt(1-(v/E))
//disp(x)
R=((1-x)/(1+x))^2
printf("\n Probablity of neutron will be reflected is  %f   ",R)