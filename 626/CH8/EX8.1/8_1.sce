clear;
clc;
close;
disp("Example 8.1")
z0=[0.2:0.05:0.6]
g1=[]
gc1=1
gm=1.4
for M1=0.2:0.05:0.6

y=1/((1+((gm-1)/2)*M1^2)^(1/2))

g1(gc1)=y
gc1=gc1+1
end
a=gca()
a.data_bounds=[0.2,0.96;0.6,1]

plot2d(z0,g1,2)
xgrid
xlabel("Inlet Mach no M1")
ylabel("Ratio of index to the impeller tip tangential Mach no.")
title("Ratio of Mach index to impeller tip Mach no.")