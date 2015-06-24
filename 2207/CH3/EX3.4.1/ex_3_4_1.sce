// Example 3.4.1: plot the variation
clc;
clear;
close;
vsrms=230;//volts
vm=sqrt(2)*vsrms;//volts
alpha=[0;30;60;90;120;150;180];//degree
x=[0;(30*(%pi/180));(60*(%pi/180));(90*(%pi/180));(120*(%pi/180));(150*(%pi/180));(180*(%pi/180))]
for i=1:7
    vldc(i)=(vm/%pi)*(1+cosd(alpha(i)));//
    vlms(i)=vsrms*((1/%pi)*(%pi-x(i)+(sin(2*x(i)))/2))^(1/2);//
end
subplot(1,2,1)
xlabel("alpha");//
ylabel("Vldc");//
xtitle('(a) Variation of average load voltage')
plot(alpha,vldc);//

subplot(1,2,2)
xlabel("alpha");//
ylabel("Vlrms");//
xtitle('(b) Variation of RMS load voltage')
plot(alpha,vlms);//
