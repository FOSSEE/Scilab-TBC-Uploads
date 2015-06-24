// Example 3.6.1: average load voltage,rms load voltage,average and rms load currents ,form factor and ripple factor
clc;
clear;
close;
format('v',7)
R=10;//IN OHMS
r=10;//IN OHMS
Vi=230;//in volts
alpha=60;//fiirng angle in degree 
Vm=Vi*sqrt(2);//in voltas
Vldc=((Vm)/%pi)*(1+cosd(alpha));//average load voltgae
disp("part (a)")
disp(Vldc,"average load voltage in volts")
disp("part (b)")
r=10;//IN OHMS
Vi=230;//in volts
alpha=60;//fiirng angle in degree 
Vm=Vi*sqrt(2);//in voltas
Vlms=((Vm/(sqrt(2)))*(((%pi-%pi/3)+(sind(2*%pi/3))/2)/%pi)^(1/2));//
disp(Vlms,"rms load voltage in volts")
//rms voltage is calculated wrong in the textbook
disp("part (c)")
Ildc=Vldc/R;// in amperes
Irms=Vlms/R;// in amperes
disp(Irms,"rms load current in ampere")
disp(Ildc,"average load current in ampere")
//rms load current is wrong in the textbook
disp("part (d)")
ff=Vlms/Vldc;
disp("form factor is "+string(ff)+" or "+string(ff*100)+" %")
rf=sqrt(ff^2-1);//
disp("ripple factor is "+string(rf)+ " or "+string(rf*100)+" %")
//form factor and ripple factor is calculated wrong in the textbook
