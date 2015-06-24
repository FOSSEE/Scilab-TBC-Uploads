clear
clc
disp("solution of 8.5")
flow=[80 50 40 20 0 100 150 200 250 120 100 80]
h=100;e=80
subplot(211)
plot2d2(flow)
xtitle('hydrograph','months','run off,millon m^3/month' )
fd=gsort(flow)
subplot(212)
plot2d2(fd)
xtitle('flow duretion','months','run off')

t=1:12
for x=2:10
    d=fd(1,x)
    ad=fd(1,(x-1))
    if d==ad then
        t(1,x)=[]
        t(1,x-1)=t(1,x-1)+1
        fd(1,x)=[]
    end
end
ffw=[fd;t]
disp("load duration data is as under")
disp(ffw)
mf=sum(flow)*10^6/(30*24*3600)
disp("(a)")
printf("meanflow is %fm^3-sec",mf)
disp("(b)")
p=(735.5/75)*mf*h*e
printf("power delevered in %dkW=%.3fMW",p,p/1000)


