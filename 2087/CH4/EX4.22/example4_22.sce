

//example 4.22
//calculate
//total rainfall
//total rainfall excess
//W index
clc;funcprot(0);
//given
r=[3.5 6.5 8.5 7.8 6.4 4 4 6];       //rainfall intensity
T=[0:30:240];                        //time
dt=30;                              //time interval
//graph is plotted between r and T
s=0;
for i=1:8
    s=s+r(i);
end
P=s*dt/60;
Pe=((6.5-4.5)+(8.5-4.5)+(7.8-4.5)+(6.4-4.5)+(6-4.5))*dt/60;    //area of graph above r=4.5.
w=(P-Pe)/4;
mprintf("total rainfall=%f cm.",P);
mprintf("\ntotal rainfall excess=%f cm.",Pe);
mprintf("\nW index=%f cm/hr.",w);




