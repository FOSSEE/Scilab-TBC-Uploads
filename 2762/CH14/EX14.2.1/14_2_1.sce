//Transport Processes and Seperation Process Principles
//Chapter 14
//Example 14.2-1
//Mechanical-Physical Seperation Processes
//given data
t=[4.4 9.5 16.3 24.6 34.7 46.1 59 73.6 89.4 107.3];
V=(1/1000)*[0.498 1 1.501 2 2.498 3.002 3.506 4.004 4.502 5.009]
tbyVd=[];
for(i=1:10)
    tbyVd(i)=(t(1,i)/V(1,i))
end
tbyV=(1/1000)*tbyVd
plot2d((V*1000),tbyV);
xtitle("Determination of the constants","Vx1000","(t/V)x(10^-3)")
//as seen from the graph,
B=6400;//intercept in s/m3
//as it is seen the given graph resembles a straight line we can find Kp/2
Kpby2=[tbyV(6)-tbyV(5)]*1000/(V(6)-V(5));//slope of st line in s/m6
Kp=Kpby2*2;
mu=8.937e-4;
A=0.0439;
delP=338*1000;
//Now Kp=mu*alpha*cs/(A*A*delP)
Cs=23.47;
alpha=Kp*(A*A*delP)/(mu*Cs);
//also B=(mu*Rm)/(A*A*(-delP))
Rm=B*(A*(delP))/mu
mprintf("alpha= %f m/kg",alpha)
mprintf(" Rm= %f m-1",Rm)
//As the slope has been calculated in numerical value deviations have been found.Kpby2=6*10^6 according to the example but the value calculated here is 5.815*10^6
