clc;
eta=0.4;
sigma=5.67;
T1=13.73;
T2=3.13;
q=eta*sigma*(T1^4-T2^4);
disp("heat loss by radiation is:");
disp("kW",q/1000);

eta2=0.9;
q1=eta*sigma*T1^4;
q2=eta2*sigma*T2^4
q_=q1-q2;
disp("grey body assumptions overstimates by:");
pct=(q-q_)/q_
disp("%",pct*100)
