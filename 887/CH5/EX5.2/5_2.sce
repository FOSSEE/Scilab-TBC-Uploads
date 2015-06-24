clc
//ex5.2
//plot of V and t(already given with the question but to get clarity we plot it)
t_1=[0:0.001:1];
t_2=[1.001:0.001:2];
t=[t_1,t_2];
V_1=3*t_1;
V_2=6-3*t_2;
V=[V_1,V_2];
plot(t,V)
xtitle('voltage vs time','time in seconds','voltage in volts')
//now find V_rms
T=2;      //from the plot of V vs t
V_rms=sqrt((1/T)*((integrate('(3*t_1)^2','t_1',0,1))+(integrate('(6-3*t_2)^2','t_2',1,2))));
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp(V_rms,'RMS value in volts')
