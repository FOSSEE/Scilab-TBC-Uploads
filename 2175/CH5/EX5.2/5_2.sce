clc;
T2=15+273;
T1=800+273;
eta=1-(T2/T1);
p4=210;//bar
p2=1;//bar
R=0.218;
sA_s4=R*log(p4/p2);

cp=1.005;
sA_s2=cp*log(T1/T2);

output=(T1-T2)*(sA_s4-sA_s2);

W41=T1*(sA_s4-sA_s2);
cv=0.718;
W21=cv*(T1-T2);

gross=W41+W21;
disp(W41)
work=output/gross;
disp("work ratio is");
disp(work)
