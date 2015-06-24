clear;
clc;
close;
disp("Example 5.12")
gm=1.1
M0=2.5
g1=[]

z0=[0:0.1:4]
i=2
for gm=1.1:0.1:1.4
    gc1=1
for M=0:0.1:4
p0=(1+(gm-1)/2*(M^2))^(gm/(gm-1))
p20=.4*p0-.5*p0
M=3
p42=0.37
NPR=p20*p42
g1(gc1)=p0
gc1=gc1+1
end

plot2d(z0,g1,i)
xgrid
title("Total-to-static pressure ratio")
xlabel("Flight Mach no. (M0)")
ylabel("pt0/p")
legend(["gamma=1.1","gamma=1.2","gamma=1.3","gamma=1.4"])
i=i+1

end
