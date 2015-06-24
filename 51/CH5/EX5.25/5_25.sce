clc;
clear;
p=10;//hp
z=30;//ft
hl=15;//ft
//energy equation
//hs=Wshaftin/(sw*Q) = hl+z
Q=(p*550)/((hl+z)*62.4);
wloss=62.4*Q*hl/550;
disp("ft^3/s",Q,"Flowrate =")
disp("hp",wloss,"Power loss=")
loss=0:25;
for i=0:25
    q(i+1)=(p*550)/((i+z)*62.4);
end
plot2d(loss,q,rect=[0,0,25,3.5])
xtitle("Flowrate vs headloss","hs,ft","Q, ft^3/sec")