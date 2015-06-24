clc;
clear;
D=0.1;//mm
sg=2.3;
vis=1.12*(10^(-3));//N*s/(m^2)
//by free body diagram and assuming CD=24/Re
U=(sg-1)*999*9.81*((D/1000)^2)/(18*vis);
disp("m/sec",U,"The velocity of the particle through still water =")
dia=0:0.001:0.1;
count=1;
for i=0:0.001:0.1
    u(count)=(sg-1)*999*9.81*((i/1000)^2)/(18*vis);
    count=count+1;
end
plot2d(dia,u,rect=[0,0,0.1,0.007])
xtitle("U vs D","D, mm","U, m/s")