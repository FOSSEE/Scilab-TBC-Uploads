clear;
clc;
close;
disp("Example 5.9")
alfa=0.1
dx=[0.1:0.5:44]
x=[]
g1=[]
g1=1
count=1
g2=[]
gc1=1
for alfa=0.1:0.5:44
Ca=(sind(alfa))/(alfa*%pi/180)
Cac=(1+cosd(alfa))/2
x(count)=Ca
count=count+1
g1(gc1)=Cac
gc1=gc1+1
end
subplot(1,2,1)
plot2d(dx,x,2)
xgrid
title("Flow divergence loss in a 2D-CD nozzle")
xlabel("Divergent flap angle(degree)")
ylabel("Flow angularity loss coefficient")
subplot(1,2,2)
plot2d(dx,g1,5)
plot2d(dx,x,2)
xgrid
legend(["Conical","2D-CD"])
xlabel("Divegent flap angle or Cone half-angle(degree)")
ylabel("Flow angularity loss coefficient")
title("Divergent loss of a conical nozzle and a 2D-CD nozzle")