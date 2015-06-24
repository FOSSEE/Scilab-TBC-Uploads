

//example 4.53
//calculate
//total rainfall
//net run-off
//W index
clc;funcprot(0);
//given
r=[2 2 8 7 1.25 1.25 4.5];       //rainfall intensity
T=[15 30 45 60 70 90 105];                        //time
dt=15;                              //time interval
fi=3;                               //fi index
//graph is plotted between r and T
s=0;
for i=1:7
    s=s+r(i);
end
P=s*dt/60;
Pe=((8-3)+(7-3)+(4.5-3))*dt/60;    //area of graph above r=3.0.
w=(P-Pe)/(105/60);
w=round(w*1000)/1000;
mprintf("total rainfall=%f cm.",P);
mprintf("\nnet run-off=%f cm.",Pe);
mprintf("\nW index=%f cm/hr.",w);
