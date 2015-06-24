// Example 3.4.5: delay angle,rms , averae output current ,average and rms thyristor current
clc;
clear;
close;
format('v',5)
Vrms=120;//RMS VOLTAGE 
R=10;//in ohms
Vldc= (0.25*(2*sqrt(2)*Vrms))/%pi;//in volts
csd= (Vldc*%pi)/(sqrt(2)*Vrms);//
alpha= acosd(csd-1);//
disp("part (a)")
disp(alpha,"delay angle in degree is")
Vrms=120;//RMS VOLTAGE 
Vm=sqrt(2)*Vrms;//assume
t=2*%pi/3:%pi;
Vlms=((Vm/(sqrt(2)))*(((1/%pi)*((%pi-(2*%pi)/3)+sind((4*%pi)/6))))^(1/2));
Vldc= (0.25*(2*sqrt(2)*Vrms))/%pi;//in volts
Ildc=Vldc/R;//average load current in ampere
Ilms=Vlms/R;// rms load current in ampere
disp("part (b)")
disp(Ilms,"rms load current in amperes")
disp(Ildc,"average load current in amperes")
//rms load current is calculated  wrong in the textbook
Im=Vm/R;//
Ith=((Im/(2*%pi))*intsplin(t,sin(t)));//in amperes
Ithrms=sqrt((Im^2/(2*%pi))*intsplin(t,(sin(t))^2));//in amperes
disp("part (c)")
disp(Ith,"average thyristor current in amperes is")
disp(Ithrms,"rms thyristor current in amperes is")
//average and rms thyrister current is calculated wrong in the textbook

