clc;
p1=1.02;//nar
p2=6.12;//bar
y=1.4
eta=1-[(p1/p2)^[(y-1)/y]]

T1=288;//K
T2=[(p1/p2)^[-(y-1)/y]]*T1;
T3=800+273;//K
T4=T3*[(p1/p2)^[(y-1)/y]];

cp=1.005;
net_output=cp*(T3-T4)-cp*(T2-T1);
gross_output=cp*(T3-T4);

W=net_output/gross_output
disp("Work ratio is:");
disp(W)
