clc;
clear;
m=0.1;//kg/min
dia1=60;//mm
alpha1=2.0;
dia2=30;//mm
alpha2=1.08;
p=0.1;//kPa
power=0.14;//W

wshaftin=power*60/m;//Nm/kg
vavg1=m*1000*1000/(60*1.23*%pi*dia1*dia1/4);
vavg2=m*1000*1000/(60*1.23*%pi*dia2*dia2/4);
loss1=wshaftin-(p*1000/1.23)+((vavg1^2)/2)-((vavg2^2)/2);//Nm/kg
loss2=wshaftin-(p*1000/1.23)+(alpha1*(vavg1^2)/2)-(alpha2*(vavg2^2)/2);//Nm/kg
disp("Nm/kg",loss1,"Loss for uniform velocity profile=")
disp("Nm/kg",loss2,"Loss for actual velocity profile=")
