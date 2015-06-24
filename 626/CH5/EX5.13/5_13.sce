
clear;
clc;
close;
disp("Example 5.13")
//T=Th/Tc
z0=[0:0.05:8]
i=1
for T=1:0.5:4.5
g1=[]
gc1=1
for alfa=0:0.05:8

FR=((1+alfa)^(1/2)*(T+alfa)^(1/2))/(T^(1/2)+alfa)
g1(gc1)=FR
gc1=gc1+1
end

//a.data_bounds=[0,1;8,1.08]
plot2d(z0,g1,i)
xgrid
i=i+1
xlabel("Bypass ratio(alfa)")
ylabel("Ratio of mixed to seperate-flow turbofan engines gross thrust")
legend("T(hot)/T(cold)=1.5","T(hot)/T(cold)=2","T(hot)/T(cold)=2.5 so on")
title("Ideal gross thrust gain with a perfect mixer")
end

