//Exa 7.3
clc;
clear;
close;
format('v',5);
//Given data :
V=132;//kV
r=2/2;//cm
Vexceed=210;//kV(rms)
go=30000/sqrt(2);//Volts/cm
go=go/1000;//kV/cm
Vdo=Vexceed/sqrt(3);//Volt
mo=1;//assumed 
del=1;//assumed air density factor
//Formula : Vdo=go*del*mo*r*log(d*100/r);//in kV
d=exp(Vdo/go/del/mo/r)*r;//cm
disp(d*10^-2,"Spacing between conductors in meter : ");
