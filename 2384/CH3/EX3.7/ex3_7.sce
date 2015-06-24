// Exa 3.7
clc;
clear;
close;
format('v',6)
// Givven data
Vo= 1;// in V (assumed)
Vav= integrate('Vo*sin(theta)','theta',0,%pi)/(2*%pi);
Vrms= sqrt(integrate('Vo^2*(1-cos(2*theta))/2','theta',0,%pi))*sqrt(1/(2*%pi));
kf= Vrms/Vav;
disp("The average value of output voltage in volts is : "+string(Vav)+"*Vo or Vo/%pi")
disp("The R.M.S value of output voltage in volts is :  "+string(Vrms)+"*Vo or Vo/2")
disp(kf,"The form factor is : ")
