//Example 2 // A/Amax
clc;
clear;
close;
x1=[0.99;0.98;0.97];//
wt=50;//
wo=1;//assume
fo=1;//assume
for i=1:3
    a(i)=((fo/((wo^2)*((1-x1(i)^2)^2+((1/wt^2)*x1(i)^2))^(1/2))));//
    am(i)=fo/((wo^2)*(1/wt^2)^(1/2));//
    z(i)=a(i)/am(i);//
    disp("for p/wo "+string(x1(i))+" value of A/Amax is "+string(z(i))+"")
end
