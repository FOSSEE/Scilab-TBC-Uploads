clear;
clc;
close;
disp("Example 5.8")
alfa=0 //alfa=cone half angle
dx=[0:0.03:44] 
x=[]
count=1
for alfa=0:0.03:44
Ca=(1+cosd(alfa))/2 //Flow angularity loss coefficient
x(count)=Ca
count=count+1
//disp(Ca,"Divergence correction factor Ca:")
end
plot2d(dx,x,2)
xgrid
title("Flow convergence loss in a conical nozzle")
xlabel("Cone half-angle")
ylabel("Flow angularity loss coefficient")