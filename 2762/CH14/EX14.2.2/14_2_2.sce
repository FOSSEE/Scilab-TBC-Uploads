//Transport Processes and Seperation Process Principles
//Chapter 14
//Example 14.2-2
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
Kpby2=[tbyV(6)-tbyV(5)]*1000/(V(1,6)-V(1,5));//slope of st line in s/m6
Kp=Kpby2*2;
A=20*0.837;//total area= (no. of plates)*(area of one plate)
Aold=0.0439;
Kpn=Kp*((Aold/A)^2);
Bn=B*((Aold/A));
V=3.37;//amt6 of filtrate to be recovered inm3
t=((Kpn/2)*V*V)+(Bn*V);
mprintf("the time taken to recover the filtrate= %f s",t)
//As the slope has been calculated in numerical value deviations have been found.Kpby2=6*10^6 according to the example but the value calculated here is 5.815*10^6
