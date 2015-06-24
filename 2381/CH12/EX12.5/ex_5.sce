//Example 5//frequency
clc;
clear;
close;
v=340;//m/s
n=600;//Hz
vs=36;//km h^-1
vs1=vs*(1000/3600);//m/s
apf=((v)/(v-vs1))*n;//Hz
vs2=54;//km h^-1
vs3=vs2*(1000/3600);//m/s
apf1=((v)/(v+vs3))*n;//Hz
disp("two apparent frequencies are "+string(apf)+" Hz and "+string(apf1)+" Hz")
df=apf-apf1;//Hz
disp(df,"difference in frequencies is ,(Hz)=")
//second apparent frequency and difference is calculated wrong in the textbook
