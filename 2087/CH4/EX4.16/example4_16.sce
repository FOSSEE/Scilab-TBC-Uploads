

//example 4.16
//plot infiltration capacity curve
//calculate constant rate of infiltration
clc;funcprot(0);
//given
D=30;          //diameter of inside ring of infiltrometer
A=%pi*D^2/4;
V=[0 200 470 840 1405 1840 2245 2510 2745 2885 2990 3130 3270];  //cumulative volume;
t=[0 2 5 10 20 30 45 60 80 100 120 150 180];                  //Time(minutes)
dt(1)=0;
for i=2:13
    dt(i)=(t(i)-t(i-1))/60;
end
for i=1:13
    F(i)=V(i)/A;
end
Fd(1)=F(1);
for i=2:13
    Fd(i)=F(i)-F(i-1);
end
for i=2:13
    ft(i)=Fd(i)/dt(i);     //infirltration rate
end
//from the graph
mprintf("constant rate of infiltration=0.40 cm/hr.");
avg10=F(4)*60/10;
avg30=F(6)*60/30;
avg10=round(avg10*100)/100;
avg30=round(avg30*100)/100;
mprintf("\naverage rate of infiltration for first 10 min=%f cm/hr.",avg10);
mprintf("\naverage rate of infiltration for first 30 min=%f cm/hr.",avg30);
//graph is plotted between ft and t
