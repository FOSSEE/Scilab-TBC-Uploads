clear;
//clc();

H=2.7;
s=1;
fr=50;

del0=23.13;
pmax1=2.545;
pmax2=0.778;
pmax3=1.75;
ps=1;
del_del0=0;

M=H*s/(180*fr);
 del_del=zeros(1,9);
 pa=zeros(1,9);
 del=zeros(1,9);
//for t=0-
pmax=pmax1;
//for t=0+;
pmax=pmax2;
p=ps-pmax2*sind(del0);
pa_avg=0.5*p;
pa(1)=pa_avg;
t=[.1:.9:9];
del(1)=del0;
del(2)=del_del0+8.33*pa_avg;

del(2)=del0+del(2);
for i=2:1:9
    pa(i)=ps-.778*sind(del(i));
    del_del(i+1)=del_del(i)+8.33*pa(i);
    del(i+1)=del(i)+ del_del(i+1);
end

plot(t,del)
xlabel("time in secs");
ylabel('torque angle in degrees');
