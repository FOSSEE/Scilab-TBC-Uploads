clc
disp("Problem 11.2")
printf("\n")

t=0:0.5:1;
i=ones(length(t),1);i1=-1;
figure
a=gca()
plot(t,i,t+1,i1)
xtitle("i vs t",'t in ms','i in mA')
//Voltage across capacitor vC=(1/C)*integrate(i*dt)
//On integration
t=0:0.0005:0.001
v=2000*t
v1=2-v;
figure
a=gca()
plot(t,v,t+0.001,v1,t+0.002,v,t+0.003,v1)
xtitle("v vs t",'t in ms','v in V')

//Power is p=v*i
t=0:.0005:.001
p=2000*t
p1=p-2;
figure
a=gca()
plot(t,p,t+0.001,p1,t+0.002,p,t+0.003,p1)
xtitle("p vs t",'t in ms','p in W')

//Work is (C*v^2)/2
t=0:.0005:.001
w=t.^2
w1=t.^2+1*10^-6-(2*10^-3*t);
figure
a=gca()
plot(t,w,t+0.001,w1,t+0.002,w,t+0.003,w1)
xtitle("w vs t",'t in ms','w in J')