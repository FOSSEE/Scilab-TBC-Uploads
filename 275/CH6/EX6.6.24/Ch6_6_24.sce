clc
disp("Example 6.24")
printf("\n")
disp("calculate output voltage for inverting amplifier & sketch the waveform")
printf("given")
disp("Peak to peak input votage=200mV,Rf/R1=10")
Vpp=200*10^(-3)
Vm=Vpp/2
RfdivR1=10
wt=0:0.2:3*%pi
Vi=Vm*sin(wt)
Vo=-(RfdivR1)*Vi
disp(Vo)
a= gca ();
subplot(221)
a= gca();
a. x_location = "origin";
a. y_location = "origin";
plot2d(wt,Vi)
xtitle("Vi V/s wt","wt","Vi in volt")
a.thickness=2
subplot(222)
a= gca();
a. x_location = "origin";
a. y_location = "origin";
plot2d(wt,Vo)
xtitle("Vo V/s wt","wt","Vo in volt")
a.thickness=2

