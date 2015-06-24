clear
clc
//Given Time(min) and Tracer Output Concentration(g/litre)
T=[0;5;10;15;20;25;30;35];
Cpulse=[0;3;5;5;4;2;1;0];
dt=5;
//Mean Residence time(t)
sum1=0;
sum2=0;
Area=0;//Initialization
for i=1:8
sum1=sum1+T(i)*Cpulse(i)*dt;
sum2=sum2+Cpulse(i)*dt;
//Area Under Concentration-Time Curve
Area=Area+Cpulse(i)*dt;
end
t=sum1/sum2;
printf("\n The mean residence time(min) is %f \n",t)
for j=1:8
    E(j)=Cpulse(j)/Area;
end
plot(T,E)
xlabel('time(min)')
ylabel('E(min^-1)')
title('Exit age distribution E vs time')

