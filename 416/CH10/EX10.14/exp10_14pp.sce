clear
clc
disp("example10.14")
a1=5000;b1=450;c1=0.5;//for system 1 
e1=0.02;e2=-0.02//error
a1c=a1*(1-e1);b1c=b1*(1-e1);c1c=c1*(1-e1)
a2c=a1*(1-e2);b2c=b1*(1-e2);c2c=c1*(1-e2)
tl=200
function [co]=cost(a,b,c,p)
    co=a+b*p+c*p^2
endfunction
p11=(b2c-b1c+2*c2c*tl)/(2*(c1c+c2c))
p22=tl-p11
totco=cost(a1c,b1c,c1c,p11)+cost(a2c,b2c,c2c,p22)
printf("\npower at station 1 is %dMW \t power at station 2 is %dMW \n total cost on economic critieria method Rs%d per hour",p11,p22,totco)
tocoe=cost(a1c,b1c,c1c,tl/2)+cost(a2c,b2c,c2c,tl/2)
eop=tocoe-totco
printf("\nextra operating cost due to erroneous scheduling Rs.%d per hour",eop)