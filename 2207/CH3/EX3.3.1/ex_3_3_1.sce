// Example 3.3.1: form factor,ripple factor ,transformation utilization factor and peak inverse voltage
clc;
clear;
close;
Vm=1;//assume
R=1;//assume
t=%pi/3:%pi;
Vldc= ((Vm/(2*%pi))*intsplin(t,sin(t)));//
Vlms=sqrt((Vm^2/(2*%pi))*intsplin(t,(sin(t))^2));//
ff=Vlms/Vldc;
disp("part (a)")
disp("form factor is "+string(ff)+" or "+string(ff*100)+" percentage")
//form factor is calculated wrong in the textbook
disp("part (b)")
rf=sqrt(ff^2-1);//
disp("ripple factor is "+string(rf)+ " or "+string(rf*100)+" percentage")
//ripple factor is calculated wrong in the textbook
Vs=Vm/(sqrt(2));//rms secondary voltage
Is=Vlms/R;//
TUF=((Vldc^2)/R)/(Vs*Is);//
disp("part (c)")
disp("transformation utilization factor is "+string(TUF)+ " or "+string(TUF*100)+" percentage")
//transformation utilization factor is calculated wrong in the textbook
R=1;//assume
Vm=1;//assume
disp("part (d)")
disp("PIV=Vm")
