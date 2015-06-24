clear
clc
function [x]=C(a,b)
x=factorial(a)/(factorial(b)*factorial(a-b))
endfunction
disp('probability of a defective part=2/20=0.1')
disp('probability of a non defective part=0.9')
disp('probabaility of at least three defectives ina sample =')
1-(C(20,0)*(0.9)^20+C(20,1)*(0.1)*(0.9)^19+C(20,2)*(0.1)^2*(0.9)^18')
disp('no. of samples having three defective parts=1000*0.323=')
1000*0.323