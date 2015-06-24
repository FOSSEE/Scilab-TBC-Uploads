clear;
clc;
close;
disp("Example 8.4")
M=2
i=2
sigma=1
z0=[0.1:0.1:0.5]
gm=1.4

for M=2:4
    g1=[]
gc1=1
    for r=[0.1:0.1:0.5]
y=1-(1/(1+(r^2)*(M^2)))+((M*r)/(2*sigma*(1+(r^2)*(M^2))^(1/2)))
g1(gc1)=y
gc1=gc1+1
end
i=i+1
plot2d(z0,g1,i)
xgrid
xlabel("Eye-to-lip radius ratio (r1/r2)")
ylabel("D inducer")
title("Inducer performance and centrifugal compressor design parameters (solidity=1)")
legend("Mt/Mz1=2","Mt/Mz1=3","Mt/Mz1=4")
end

