clc
T1=308; //K
T2=258; //K
capacity=12; //tonne

COP=T2/(T1-T2);
disp("(i) Co-efficient of performance =")
disp(COP)


disp("(ii) Heat rejected from the system per hour")
W=capacity*14000/5.16;
Q=capacity*14000+W;
disp("Q=")
disp(Q)
disp("kJ/h")


disp("(iii) Power required =")
P=W/60/60;
disp(P)
disp("kW")