clear;
clc;
close;
disp("Example 7.7")
Rm=0.5
b=0 //b=b/w
i=1
for b=0:0.1:0.5
r=0.5
vr=[]
x=[]
count=1
    for r=0.5:0.05:1.5
    
R=(1-b)-((1-b)-Rm)/(r)^2
x(count)=R
count=count+1
end
vr=[0.5:0.05:1.5]
a=gca();
a.data_bounds=[0.5,0;1.5,0.9]

plot2d(vr,x,i)
i=i+1
xgrid
xlabel("r/r1 (<---------)Possible hub radii and Possible tip radii(--------->)")
ylabel("R(r)")
title("Degree of reaction for a compressor stage with an IGV")
legend("b/w=0","b/w=0.1","b/w=0.2 so on")
end