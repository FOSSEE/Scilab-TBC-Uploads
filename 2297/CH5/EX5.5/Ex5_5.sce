// Example 5.5;reading
clc;
clear;
format('v',5)
// given :
fsd=100;//full scale division in amperes
fsd1=100;//full scale division in mA
csh=fsd-(fsd*10^-3);//difference in currents in amperes
rx=0.8;//resistance in ohms
r1=((fsd1*10^-3*rx)/csh);//resistance in ohms
rx1=1;//resistance in ohms
r2=((fsd1*10^-3*rx1)/csh);//resistance in ohms
em1=((rx*r1)/(rx+r1));//resistance in ohms
em2=((rx1*r2)/(rx1+r2));//resistance in ohms
crm1=((em2*10^4*fsd)/((em2*10^4)+(em1*10^4)));//current in amperes
crm2=((em1*10^4*fsd)/((em1*10^4)+(em2*10^4)));//current in amperes
disp(crm1,"current read by meter 1 is,(A)=")
disp(crm2,"current read by meter 2 is,(A)=")
